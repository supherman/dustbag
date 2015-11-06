module Dustbag
  class Dimensions
    include Parser::Node

    def height
      Dimension.new(subnode('Height'))
    end

    def length
      Dimension.new(subnode('Length'))
    end

    def weight
      Dimension.new(subnode('Weight'))
    end

    def width
      Dimension.new(subnode('Width'))
    end
  end
end
