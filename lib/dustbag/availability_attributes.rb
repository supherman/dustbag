module Dustbag
  class AvailabilityAttributes
    include Parser::Node

    def type
      subnode_text('AvailabilityType')
    end

    def maximum_hours
      subnode_text('MaximumHours').to_i
    end

    def minimum_hours
      subnode_text('MinimumHours').to_i
    end
  end
end
