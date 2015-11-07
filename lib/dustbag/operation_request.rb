module Dustbag
  class OperationRequest
    include Parser::Node

    text_attributes :request_id, :request_processing_time

    children :arguments

    child name:  :http_headers,
          node:  'HTTPHeaders',
          class: HttpHeaders
  end
end
