module Dustbag
  class OfferSummary
    include Parser::Node

    numeric_attributes :total_new, :total_used, :total_collectible,
                       :total_refurbished

    def lowest_new_price
      Price.parse(subnode('LowestNewPrice'))
    end
  end
end
