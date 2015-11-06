require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Dustbag
  describe ImageSet do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#category' do
      it { expect(subject.category).to eq 'primary' }
    end
  end
end
