module Vacuum
  module Parsers
    class ItemAttributes
      include Parser::Node

      def manufacturer
        subnode_text('Manufacturer')
      end

      def product_group
        subnode_text('ProductGroup')
      end

      def title
        subnode_text('Title')
      end

      def actors
        repeated_subnodes_text('Actor')
      end

      def creators
        repeated_subnodes('Creator').inject({}) do |acc, val|
          acc[val['Role']] = val.text
          acc
        end
      end

      def director
        subnode_text('Director')
      end

      def authors
        repeated_subnodes_text('Author')
      end

      def binding
        subnode_text('Binding')
      end

      def brand
        subnode_text('Brand')
      end

      def color
        subnode_text('Color')
      end

      def ean
        subnode_text('EAN')
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

      def model
        subnode_text('Model')
      end

      def mpn
        subnode_text('MPN')
      end

      def package_quantity
        subnode_text('PackageQuantity').to_i
      end

      def part_number
        subnode_text('PartNumber')
      end

      def product_type_name
        subnode_text('ProductTypeName')
      end

      def publisher
        subnode_text('Publisher')
      end

      def studio
        subnode_text('Studio')
      end

      def trade_in_value
        Price.new(subnode_text('TradeInValue'))
      end

      def upc
        subnode_text('UPC')
      end

      def upc_list
        list = subnode('UPCList')
        list && list.locate('UPCListElement').map do |element|
          element.text
        end
      end

      def size
        subnode_text('Size')
      end

      def item_dimensions
        Dimensions.new(subnode('ItemDimensions'))
      end

      def list_price
        Price.new(subnode('ListPrice'))
      end

      def package_dimensions
        Dimensions.new(subnode('PackageDimensions'))
      end

      def audience_rating
        subnode_text('AudienceRating')
      end

      def genre
        subnode_text('Genre')
      end

      def languages
        Languages.new(subnode('Languages'))
      end

      def release_date
        Date.parse(subnode_text('ReleaseDate')) rescue nil
      end

      def running_time
        Dimension.new(subnode('RunningTime'))
      end

      def isbn
        subnode_text('ISBN')
      end

      def number_of_items
        subnode_text('NumberOfItems').to_i
      end

      def number_of_pages
        (subnode_text('NumberOfPages')).to_i
      end

      def publication_date
        Date.parse(subnode_text('PublicationDate')) rescue nil
      end

      def adult_product?
        subnode_text('IsAdultProduct') == '1'
      end
    end
  end
end
