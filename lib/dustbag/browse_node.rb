module Dustbag
  class BrowseNode
    include Parser::Node

    def id
      subnode_text('BrowseNodeId').to_i
    end

    def name
      subnode_text('Name')
    end

    def ancestors
      BrowseNodes.new(subnode('Ancestors'))
    end

    def category_root?
      subnode_text('IsCategoryRoot') == '1'
    end
  end
end
