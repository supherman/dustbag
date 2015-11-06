module Dustbag
  class HttpHeaders
    include Parser::CollectionNode
    include Parser::MapCollectionNode

    member_name 'Header'
  end
end
