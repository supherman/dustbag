module Dustbag
  class Items
    include Parser::Node
    include Parser::CollectionNode

    member_name 'Item'

    text_attributes :more_search_results_url

    numeric_attributes :total_results, :total_pages

    children :request
  end
end
