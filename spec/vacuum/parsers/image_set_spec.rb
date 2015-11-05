require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe ImageSet do
      let(:image_set) { Ox.parse(File.read('spec/fixtures/image_set.xml')) }

      subject { described_class.new(image_set) }

      it_behaves_like 'a node'
    end
  end
end
