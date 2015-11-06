require 'spec_helper'
require 'shared_examples/collection_node'
require 'shared_examples/node_context'

module Dustbag
  describe Accessories do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', Accessory
  end
end
