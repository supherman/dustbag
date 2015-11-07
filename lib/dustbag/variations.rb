module Dustbag
  class Variations
    include Parser::Node
    include Parser::CollectionNode

    member_name 'Item'

    numeric_attributes total: 'TotalVariations',
                       total_pages: 'TotalVariationPages'

    def dimensions
      dimensions = subnode('VariationDimensions')
      dimensions && dimensions.locate('VariationDimension').map do |dimension|
        dimension.text
      end
    end
  end
end
