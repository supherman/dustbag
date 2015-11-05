require 'spec_helper'

module Vacuum
  describe Parser do
    context 'an ItemSearchResponse' do
      let(:response) { File.read('spec/fixtures/item_search_response.xml') }

      it { expect{ Vacuum::Parser.parse(response) }.to_not raise_exception }

      it { expect(Vacuum::Parser.parse(response)).to be_a_kind_of Parsers::ItemSearchResponse }
    end

    context 'a not implemented response type' do
      let(:response) { '<?xml version="1.0" ?><foo>Foo</foo>' }

      it { expect{ Vacuum::Parser.parse(response) }.to raise_exception('foo is not implemented!') }
    end

    context 'not a xml response' do
      let(:response) { '' }

      it { expect{ Vacuum::Parser.parse(response) }.to raise_exception('Not a Ox::Document') }
    end
  end
end
