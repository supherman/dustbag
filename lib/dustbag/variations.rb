module Dustbag
  class Variations
    include Parser::CollectionNode

    member_name 'Item'

    def total
      subnode_text('TotalVariations').to_i
    end

    def total_pages
      subnode_text('TotalVariationPages').to_i
    end

    def dimensions
      dimensions = subnode('VariationDimensions')
      dimensions && dimensions.locate('VariationDimension').map do |dimension|
        dimension.text
      end
    end
  end
end
