module Vacuum
  module Parsers
    class ItemLink
      include Parser::Node

      def description
        subnode_text('Description')
      end

      def url
        subnode_text('URL')
      end
    end
  end
end
