module Dustbag
  class VariationSummary
    include Parser::Node

    def lowest_price
      Price.parse(subnode('LowestPrice'))
    end

    def highest_price
      Price.parse(subnode('HighestPrice'))
    end
  end
end
