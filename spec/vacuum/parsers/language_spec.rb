require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe Language do
      let(:language) { Ox.parse(File.read('spec/fixtures/language.xml')) }

      subject { described_class.new(language) }

      it_behaves_like 'a node'

      describe '#name' do
        it { expect(subject.name).to eq('English') }
      end

      describe '#type' do
        it { expect(subject.type).to eq('Subtitled') }
      end
    end
  end
end
