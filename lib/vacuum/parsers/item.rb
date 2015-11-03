module Vacuum
  module Parsers
    class Item
      include Parser::Node

      def asin
        subnode_text('ASIN')
      end

      def parent_asin
        subnode_text('ParentASIN')
      end

      def detail_page_url
        subnode_text('DetailPageURL')
      end

      def item_links
        ItemLinks.new(subnode('ItemLinks'))
      end

      def item_attributes
        ItemAttributes.new(subnode('ItemAttributes'))
      end
    end
  end
end
