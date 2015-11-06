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

      def sales_rank
        subnode_text('SalesRank').to_i
      end

      def offers
        Offers.new(subnode('Offers'))
      end

      def customer_reviews
        CustomerReviews.new(subnode('CustomerReviews'))
      end

      def editorial_reviews
        EditorialReviews.new(subnode('EditorialReviews'))
      end

      def similar_products
        SimilarProducts.new(subnode('SimilarProducts'))
      end

      def browse_nodes
        BrowseNodes.new(subnode('BrowseNodes'))
      end

      def accessories
        Accessories.new(subnode('Accessories'))
      end

      def variation_summary
        VariationSummary.new(subnode('VariationSummary'))
      end

      def variations
        Variations.new(subnode('Variations'))
      end

      def variation_attributes
        VariationAttributes.new(subnode('VariationAttributes'))
      end
    end
  end
end
