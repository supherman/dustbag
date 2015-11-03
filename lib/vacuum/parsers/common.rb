module Vacuum
  module Parsers
    module Common
      include Parser::Node

      def operation_request
        OperationRequest.new(subnode('OperationRequest'))
      end
    end
  end
end
