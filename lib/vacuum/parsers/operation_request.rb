module Vacuum
  module Parsers
    class OperationRequest
      include Parser::Node

      def request_id
        subnode_text('RequestId')
      end

      def arguments
        Arguments.new(subnode('Arguments'))
      end

      def http_headers
        HttpHeaders.new(subnode('HTTPHeaders'))
      end

      def request_processing_time
        subnode_text('RequestProcessingTime')
      end
    end
  end
end

