require 'spec_helper'
require 'shared_examples/map_collection_node'

module Vacuum
  module Parsers
    describe Arguments do
      let(:arguments) { Ox.parse(File.read('spec/fixtures/arguments.xml')) }

      subject { described_class.new(arguments) }

      it_behaves_like 'a map collection node'
    end
  end
end
