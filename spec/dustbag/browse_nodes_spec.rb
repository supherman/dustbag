require 'spec_helper'

module Dustbag
  describe BrowseNodes do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', BrowseNode
  end
end
