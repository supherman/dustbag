module Dustbag
  module SimpleProduct
    include Parser::Node

    text_attributes asin: 'ASIN'

    text_attributes :title
  end
end
