require 'spec_helper'
require 'shared_examples/collection_node'

module Vacuum
  module Parsers
    describe ItemLinks do
      let(:item_links) { Ox.parse(File.read('spec/fixtures/item_links.xml')) }

      subject { described_class.new(item_links) }

      it_behaves_like 'a collection node of', ItemLink
    end
  end
end
