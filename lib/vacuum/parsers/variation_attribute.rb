module Vacuum
  module Parsers
    class VariationAttribute
      include Parser::Node

      def name
        subnode_text('Name')
      end

      def value
        subnode_text('Value')
      end
    end
  end
end
