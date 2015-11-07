module Dustbag
  class BrowseNode
    include Parser::Node

    numeric_attributes id: 'BrowseNodeId'

    text_attributes :name

    children ancestors: BrowseNodes

    def category_root?
      subnode_text('IsCategoryRoot') == '1'
    end
  end
end
