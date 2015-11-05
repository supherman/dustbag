module Vacuum
  module Parsers
    class EditorialReview
      include Parser::Node

      def source
        subnode_text('Source')
      end

      def content
        subnode_text('Content')
      end

      def link_suppressed?
        subnode_text('IsLinkSuppressed') == '1'
      end
    end
  end
end
