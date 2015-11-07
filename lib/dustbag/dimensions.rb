module Dustbag
  class Dimensions
    include Parser::Node

    children height: Dimension,
             length: Dimension,
             weight: Dimension,
             width:  Dimension
  end
end
