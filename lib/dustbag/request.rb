module Dustbag
  class Request
    include Parser::Node

    def valid?
      subnode_text('IsValid') == 'True'
    end

    def item_search_request
      ItemSearchRequest.new(subnode('ItemSearchRequest'))
    end
  end
end
