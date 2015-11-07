module Dustbag
  class AvailabilityAttributes
    include Parser::Node

    text_attributes type: 'AvailabilityType'

    numeric_attributes :maximum_hours, :minimum_hours
  end
end
