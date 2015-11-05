require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Dimensions do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#height' do
        it { expect(subject.height.value).to eq 559 }
        it { expect(subject.height.units).to eq 'hundredths-inches' }
      end

      describe '#length' do
        it { expect(subject.length.value).to eq 263 }
        it { expect(subject.length.units).to eq 'hundredths-inches' }
      end

      describe '#weight' do
        it { expect(subject.weight.value).to eq 34 }
        it { expect(subject.weight.units).to eq 'hundredths-pounds' }
      end

      describe '#width' do
        it { expect(subject.width.value).to eq 285 }
        it { expect(subject.width.units).to eq 'hundredths-inches'}
      end
    end
  end
end
