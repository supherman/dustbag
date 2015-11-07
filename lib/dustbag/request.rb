module Dustbag
  class Request
    include Parser::Node

    children :item_search_request

    def valid?
      subnode_text('IsValid') == 'True'
    end
  end
end
