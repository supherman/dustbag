require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe Duration do
      let(:duration) { Ox.parse(File.read('spec/fixtures/duration.xml')) }

      subject { described_class.new(duration) }

      it_behaves_like 'a node'
    end
  end
end
