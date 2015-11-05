module Vacuum
  module Parsers
    class CustomerReviews
      include Parser::Node

      def iframe_url
        subnode_text('IFrameURL')
      end

      def any?
        subnode_text('HasReviews') == 'true'
      end
    end
  end
end
