require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe Request do
      let(:request) { Ox.parse(File.read('spec/fixtures/request.xml')) }

      subject { described_class.new(request) }

      it_behaves_like 'a node'

      describe '#valid?' do
        context 'when request is valid' do
          it { expect(subject.valid?).to be_truthy }
        end

        context 'when request is not valid' do
          let(:request) { Ox.parse(File.read('spec/fixtures/invalid_request.xml')) }

          it { expect(subject.valid?).to be_falsy }
        end
      end

      describe '#item_search_request' do
        it { expect(subject.item_search_request).to be_a_kind_of ItemSearchRequest }
      end
    end
  end
end
