module Vacuum
  module Parsers
    class Accessory
      include Parser::Node
      include SimpleProduct
    end
  end
end
