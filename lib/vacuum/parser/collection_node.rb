module Vacuum
  module Parser
    module CollectionNode
      include Enumerable
      include Node

      extend Forwardable

      def_delegators :collection, :each, :size, :empty?

      def self.included(base)
        base.extend(ClassMethods)
      end

      def collection
        members = node && node.locate(member_name) || []
        @collection ||= members.map do |member|
          member_class.new(member)
        end
      end

      def member_name
        self.class.member_name
      end

      def member_class
        Vacuum::Parsers.const_get(member_name)
      end

      module ClassMethods
        def member_name(name = nil)
          @member_name ||= name
        end
      end
    end
  end
end
