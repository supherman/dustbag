require 'pry'
module Vacuum
  module Parsers
    class Dimension
      include Parser::Node

      def value
        text.to_i
      end

      def units
        attributes[:Units]
      end
    end
  end
end
