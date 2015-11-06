require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe VariationAttribute do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#name' do
        it { expect(subject.name).to eq 'Color' }
      end

      describe '#value' do
        it { expect(subject.value).to eq 'Green' }
      end
    end
  end
end
