module Vacuum
  module Parsers
    class Language
      include Parser::Node

      def name
        subnode_text('Name')
      end

      def type
        subnode_text('Type')
      end
    end
  end
end
