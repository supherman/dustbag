module Dustbag
  class VariationAttribute
    include Parser::Node

    text_attributes :name, :value
  end
end
