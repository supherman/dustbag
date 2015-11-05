require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Language do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#name' do
        it { expect(subject.name).to eq('English') }
      end

      describe '#type' do
        it { expect(subject.type).to eq('Subtitled') }
      end
    end
  end
end
