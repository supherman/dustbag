require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/simple_product'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Accessory do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'
      it_behaves_like 'a simple product'
    end
  end
end

