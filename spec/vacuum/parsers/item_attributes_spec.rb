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

      context 'When a movie' do
        let(:item_attributes) { Ox.parse(File.read('spec/fixtures/movie_item_attributes.xml')) }

        describe '#actors' do
          it { expect(subject.actors).to eq ['Robert Downey Jr.', 'Chris Hemsworth', 'Mark Ruffalo', 'Chris Evans', 'Scarlett Johansson'] }
        end

        describe '#creators' do
          it { expect(subject.creators).to eq({ 'Producer' => 'Kevin Feige', 'Writer' => 'Joss Whedon' }) }
        end

        describe '#director' do
          it { expect(subject.director).to eq 'Joss Whedon' }
        end

        describe '#product_group' do
          it { expect(subject.product_group).to eq 'Movie' }
        end

        describe '#title' do
          it { expect(subject.title).to eq "Marvel's The Avengers: Age Of Ultron (Plus Bonus Features)" }
        end
      end
    end
  end
end
