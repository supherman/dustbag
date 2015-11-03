module Vacuum
  module Parsers
    class ItemSearchRequest
      include Parser::Node

      def keywords
        subnode_text('Keywords')
      end

      def response_group
        subnode_text('ResponseGroup')
      end

      def search_index
        subnode_text('SearchIndex')
      end
    end
  end
end
