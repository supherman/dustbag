require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe OfferSummary do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'
    end
  end
end
