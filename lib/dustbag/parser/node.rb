module Dustbag
  module Parser
    module Node
      attr_reader :node, :subnodes
      extend Forwardable

      def_delegators :node, :value, :text, :attributes

      def self.included(base)
        base.extend(ClassMethods)
      end

      def initialize(node)
        @node     = node
        @subnodes = {}
      end

      def subnode_text(subnode_name)
        subnode = subnode(subnode_name)
        subnode && subnode.text
      end

      def subnode(subnode_name)
        subnodes[subnode_name] ||= node.locate(subnode_name).first
      end

      def repeated_subnodes(subnode_name)
        subnodes[subnode_name] ||= node.locate(subnode_name)
      end

      def repeated_subnodes_text(subnode_name)
        repeated_subnodes(subnode_name).map(&:text)
      end

      module ClassMethods
        def text_attributes(*attrs)
          attrs.each do |attr|
            node_name = xml_node_name(attr)

            if attr.is_a?(Hash)
              attr.each do |key, value|
                define_method(key) do
                  subnode_text(value)
                end
              end
            else
              define_method(attr) do
                subnode_text(node_name)
              end
            end
          end
        end

        def numeric_attributes(*attrs)
          attrs.each do |attr|
            node_name = xml_node_name(attr)

            if attr.is_a?(Hash)
              attr.each do |key, value|
                define_method(key) do
                  subnode_text(value).to_i
                end
              end
            else
              define_method(attr) do
                subnode_text(node_name).to_i
              end
            end
          end
        end

        def children(*attrs)
          attrs.each do |attr|

            if attr.is_a?(Hash)
              attr.each do |key, value|
                node_name = xml_node_name(key)
                define_method(key) do
                  value.new(subnode(node_name))
                end
              end
            else
              node_name = xml_node_name(attr)
              define_method(attr) do
                Dustbag.const_get(node_name).new(subnode(node_name))
              end
            end
          end
        end

        def child(name)
          if name.is_a? Hash
            define_method(name[:name]) do
              (name[:class] || Dustbag.const_get(name[:node])).new(subnode(name[:node]))
            end
          else
            node_name = xml_node_name(attr)
            define_method(name) do
              Dustbag.const_get(node_name).new(subnode(node_name))
            end
          end
        end

        private

        def xml_node_name(attr)
          if attr == :url
            return "URL"
          end
          attr.to_s.split('_').map(&:capitalize).join('')
        end
      end
    end
  end
end
