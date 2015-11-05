module Vacuum
  module Parsers
    class HttpHeaders
      include Parser::CollectionNode
      include Parser::MapCollectionNode

      member_name 'Header'
    end
  end
end
