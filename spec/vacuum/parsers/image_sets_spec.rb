require 'spec_helper'
require 'shared_examples/collection_node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe ImageSets do
      include_context 'load xml from fixture'

      it_behaves_like 'a collection node of', ImageSet
    end
  end
end
