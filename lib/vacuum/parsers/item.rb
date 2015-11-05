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

      def small_image
        Image.new(subnode('SmallImage'))
      end

      def medium_image
        Image.new(subnode('MediumImage'))
      end

      def large_image
        Image.new(subnode('LargeImage'))
      end

      def image_sets
        ImageSets.new(subnode('ImageSets'))
      end

      def offer_summary
        OfferSummary.new(subnode('OfferSummary'))
      end
    end
  end
end
