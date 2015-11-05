require 'spec_helper'
require 'shared_examples/collection_node'

module Vacuum
  module Parsers
    describe ImageSets do
      let(:image_sets) { Ox.parse(File.read('spec/fixtures/image_sets.xml')) }

      subject { described_class.new(image_sets) }

      it_behaves_like 'a collection node of', ImageSet
    end
  end
end
