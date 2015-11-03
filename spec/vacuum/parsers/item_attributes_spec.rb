require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe ItemAttributes do
      let(:item_attributes) { Ox.parse(File.read('spec/fixtures/item_attributes.xml')) }

      subject { described_class.new(item_attributes) }

      it_behaves_like 'a node'

      describe '#manufacturer' do
        it { expect(subject.manufacturer).to eq 'Motorola' }
      end

      describe '#product_group' do
        it { expect(subject.product_group).to eq 'Wireless' }
      end

      describe '#title' do
        it { expect(subject.title).to eq 'Motorola Moto G (3rd Generation) - Black - 16 GB - Global GSM Unlocked Phone' }
      end
    end
  end
end
