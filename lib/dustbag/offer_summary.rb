module Dustbag
  class OfferSummary
    include Parser::Node

    def lowest_new_price
      Price.parse(subnode('LowestNewPrice'))
    end

    def total_new
      subnode_text('TotalNew').to_i
    end

    def total_used
      subnode_text('TotalUsed').to_i
    end

    def total_collectible
      subnode_text('TotalCollectible').to_i
    end

    def total_refurbished
      subnode_text('TotalRefurbished').to_i
    end
  end
end
