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
    end
  end
end
