module Dustbag
  class ImageSet
    include Parser::Node

    def category
      attributes[:Category]
    end
  end
end
