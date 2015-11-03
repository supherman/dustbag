module Vacuum
  module Parser
    module Node
      attr_reader :node, :subnodes

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
    end
  end
end
