module Dustbag
  class ItemSearchResponse
    include Parser::Node
    include Common

    children :items
  end
end
