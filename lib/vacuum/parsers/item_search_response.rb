module Vacuum
  module Parsers
    class ItemSearchResponse
      include Common

      def items
        Items.new(subnode('Items'))
      end
    end
  end
end
