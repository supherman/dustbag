require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe ItemSearchRequest do
      let(:item_search_request) { Ox.parse(File.read('spec/fixtures/item_search_request.xml')) }

      subject { described_class.new(item_search_request) }

      it_behaves_like 'a node'

      describe '#keywords' do
        it { expect(subject.keywords).to eq 'moto g' }
      end

      describe '#response_group' do
        it { expect(subject.response_group).to eq 'Small' }
      end

      describe '#search_index' do
        it { expect(subject.search_index).to eq 'All' }
      end
    end
  end
end
