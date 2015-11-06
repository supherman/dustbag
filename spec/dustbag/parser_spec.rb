require 'spec_helper'

module Dustbag
  context 'an ItemSearchResponse' do
    let(:response) { File.read('spec/fixtures/item_search_response.xml') }

    it { expect{ Dustbag::Parser.parse(response) }.to_not raise_exception }

    it { expect(Dustbag::Parser.parse(response)).to be_a_kind_of ItemSearchResponse }
  end

  context 'a not implemented response type' do
    let(:response) { '<?xml version="1.0" ?><foo>Foo</foo>' }

    it { expect{ Dustbag::Parser.parse(response) }.to raise_exception('foo is not implemented!') }
  end

  context 'not a xml response' do
    let(:response) { '' }

    it { expect{ Dustbag::Parser.parse(response) }.to raise_exception('Not a Ox::Document') }
  end
end
