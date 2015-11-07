module Dustbag
  class Language
    include Parser::Node

    text_attributes :name, :type
  end
end
