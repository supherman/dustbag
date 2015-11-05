require 'spec_helper'
require 'shared_examples/collection_node'

module Vacuum
  module Parsers
    describe Languages do
      let(:xml) { Ox.parse(File.read('spec/fixtures/languages.xml')) }

      subject { described_class.new(xml) }
    end
  end
end
