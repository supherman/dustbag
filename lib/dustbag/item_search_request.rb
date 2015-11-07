module Dustbag
  class ItemSearchRequest
    include Parser::Node

    text_attributes :keywords, :response_group, :search_index
  end
end
