module Vacuum
  module Parsers
    class Items
      include Parser::CollectionNode

      member_name 'Item'

      def request
        Request.new(subnode('Request'))
      end

      def total_results
        subnode_text('TotalResults').to_i
      end

      def total_pages
        subnode_text('TotalPages').to_i
      end

      def more_search_results_url
        subnode_text('MoreSearchResultsUrl')
      end
    end
  end
end
