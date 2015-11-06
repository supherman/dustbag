module Dustbag
  class VariationAttribute
    include Parser::Node

    def name
      subnode_text('Name')
    end

    def value
      subnode_text('Value')
    end
  end
end
