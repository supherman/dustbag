require 'spec_helper'
require 'shared_examples/collection_node'

module Vacuum
  module Parsers
    describe VariationAttributes do
      include_context 'load xml from fixture'

      it_behaves_like 'a collection node of', VariationAttribute
    end
  end
end
