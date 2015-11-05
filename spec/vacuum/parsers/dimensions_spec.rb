require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe Dimensions do
      let(:dimensions) { Ox.parse(File.read('spec/fixtures/dimensions.xml')) }

      subject { described_class.new(dimensions) }

      it_behaves_like 'a node'
    end
  end
end
