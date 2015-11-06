require 'spec_helper'
require 'shared_examples/map_collection_node'
require 'shared_examples/node_context'

module Dustbag
  describe HttpHeaders do
    include_context 'load xml from fixture'

    it_behaves_like 'a map collection node'

    it { expect(subject['UserAgent']).to_not be_nil }
  end
end
