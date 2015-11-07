module Dustbag
  class ItemLink
    include Parser::Node

    text_attributes :description

    text_attributes url: 'URL'
  end
end
