module Dustbag
  class ImageSet
    include Parser::Node


    children small_image:  Image,
             medium_image: Image,
             large_image:  Image,
             tiny_image:   Image,
             thumbnail_image: Image,
             swatch_image: Image

    def category
      attributes[:Category]
    end
  end
end
