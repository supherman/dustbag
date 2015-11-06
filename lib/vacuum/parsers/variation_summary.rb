module Vacuum
  module Parsers
    class VariationSummary
      include Parser::Node

      def lowest_price
        Price.new(subnode('LowestPrice'))
      end

      def highest_price
        Price.new(subnode('HighestPrice'))
      end
    end
  end
end
