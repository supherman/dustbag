require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Request do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#valid?' do
        context 'when request is valid' do
          it { expect(subject.valid?).to be_truthy }
        end

        context 'when request is not valid' do
          include_context 'load xml from fixture', 'invalid_request'

          it { expect(subject.valid?).to be_falsy }
        end
      end

      describe '#item_search_request' do
        it { expect(subject.item_search_request).to be_a_kind_of ItemSearchRequest }
      end
    end
  end
end
