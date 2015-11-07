module Dustbag
  class ItemAttributes
    include Parser::Node

    text_attributes :manufacturer, :product_group, :title, :director, :binding,
                    :brand, :color, :model, :part_number, :product_type_name,
                    :publisher, :studio, :size, :audience_rating, :genre

    numeric_attributes :number_of_items, :number_of_pages, :package_quantity

    text_attributes ean:  'EAN',
                    mpn:  'MPN',
                    upc:  'UPC',
                    isbn: 'ISBN'

    children item_dimensions: Dimensions,
             package_dimensions: Dimensions,
             running_time: Dimension

    children :languages

    def actors
      repeated_subnodes_text('Actor')
    end

    def creators
      repeated_subnodes('Creator').inject({}) do |acc, val|
        acc[val['Role']] = val.text
        acc
      end
    end

    def authors
      repeated_subnodes_text('Author')
    end

    def ean_list
      list = subnode('EANList')
      list && list.locate('EANListElement').map do |element|
        element.text
      end
    end

    def features
      repeated_subnodes_text('Feature')
    end

    def labels
      repeated_subnodes_text('Label')
    end

    def trade_in_value
      Price.parse(subnode('TradeInValue'))
    end

    def upc_list
      list = subnode('UPCList')
      list && list.locate('UPCListElement').map do |element|
        element.text
      end
    end

    def list_price
      Price.parse(subnode('ListPrice'))
    end

    def release_date
      Date.parse(subnode_text('ReleaseDate')) rescue nil
    end

    def publication_date
      Date.parse(subnode_text('PublicationDate')) rescue nil
    end

    def adult_product?
      subnode_text('IsAdultProduct') == '1'
    end
  end
end
