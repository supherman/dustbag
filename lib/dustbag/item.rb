module Dustbag
  class Item
    include Parser::Node

    text_attributes asin:            'ASIN',
                    parent_asin:     'ParentASIN',
                    detail_page_url: 'DetailPageURL'

    numeric_attributes :sales_rank

    children :item_links, :item_attributes, :image_sets, :offer_summary,
             :offers, :customer_reviews, :editorial_reviews, :similar_products,
             :browse_nodes, :accessories, :variation_summary, :variations,
             :variation_attributes

    children small_image:  Image,
             medium_image: Image,
             large_image:  Image

  end
end
