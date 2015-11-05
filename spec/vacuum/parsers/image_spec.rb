require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe Image do
      let(:image) { Ox.parse(File.read('spec/fixtures/image.xml')) }

      subject { described_class.new(image) }

      it_behaves_like 'a node'
    end
  end
end
