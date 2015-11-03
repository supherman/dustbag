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
    end
  end
end
