require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Dimension do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#value' do
        it { expect(subject.value).to eq 559 }
      end

      describe '#units' do
        it { expect(subject.units).to eq 'hundredths-inches' }
      end
    end
  end
end
