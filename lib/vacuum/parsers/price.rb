module Vacuum
  module Parsers
    class Price
      include Parser::Node

      def amount
        subnode_text('Amount').to_i
      end

      def currency_code
        subnode_text('CurrencyCode')
      end

      def formatted_price
        subnode_text('FormattedPrice')
      end
    end
  end
end
