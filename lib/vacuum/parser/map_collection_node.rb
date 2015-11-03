module Vacuum
  module Parser
    module MapCollectionNode
      extend Forwardable

      def_delegators(:collection, :[], :keys, :values)

      private

      def collection
        members = node && node.locate(member_name) || []
        @collection ||= members.inject({}) do |acc, val|
          acc[val['Name']] = val['Value']
          acc
        end
      end
    end
  end
end
