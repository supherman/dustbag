module Dustbag
  class Arguments
    include Parser::CollectionNode
    include Parser::MapCollectionNode

    member_name 'Argument'
   end
end
