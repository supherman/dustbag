module Dustbag
  class Image
    include Parser::Node


    text_attributes :url

    numeric_attributes :width, :height
  end
end
