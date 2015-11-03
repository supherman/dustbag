require 'spec_helper'
require 'shared_examples/common_response'

module Vacuum
  module Parsers
    describe ItemSearchResponse do
      let(:response) { File.read('spec/fixtures/item_search_response_small.xml') }
      let(:parsed_response) { Ox.parse(response) }

      subject { described_class.new(parsed_response) }

      it_behaves_like 'a common response'

      describe '#items' do
        it { expect(subject.items).to be_a_kind_of Items }
      end
    end
  end
end
