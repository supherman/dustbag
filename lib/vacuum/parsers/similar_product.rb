module Vacuum
  module Parsers
    class SimilarProduct
      include Parser::Node

      def asin
        subnode_text('ASIN')
      end

      def title
        subnode_text('Title')
      end
    end
  end
end
