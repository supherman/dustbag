require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Price do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#amount' do
        it { expect(subject.amount).to eq 17999 }
      end

      describe '#currency_code' do
        it { expect(subject.currency_code).to eq 'USD' }
      end

      describe '#formatted_price' do
        it { expect(subject.formatted_price).to eq '$179.99' }
      end
    end
  end
end
