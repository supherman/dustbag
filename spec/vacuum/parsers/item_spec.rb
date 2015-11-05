require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe Item do
      let(:item) { Ox.parse(File.read('spec/fixtures/item_small.xml')) }

      subject { described_class.new(item) }

      it_behaves_like 'a node'

      describe '#asin' do
        it { expect(subject.asin).to eq 'B00ZQVSKS2' }
      end

      describe '#parent_asin' do
        it { expect(subject.parent_asin).to eq 'B0127MKEAE' }
      end

      describe '#detail_page_url' do
        it { expect(subject.detail_page_url).to eq 'http://www.amazon.com/Motorola-Moto-3rd-Generation-Unlocked/dp/B00ZQVSKS2%3Fpsc%3D1%26SubscriptionId%3DMyAccessKeyId%26tag%3Daffiliate-tag%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00ZQVSKS2' }
      end

      describe '#item_links' do
        it { expect(subject.item_links).to be_a_kind_of ItemLinks }
      end

      describe '#item_attributes' do
        it { expect(subject.item_attributes).to be_a_kind_of ItemAttributes }
      end

      context 'item response for the medium response group' do
        let(:item) { Ox.parse(File.read('spec/fixtures/item_medium.xml')) }

        describe '#small_image' do
          it { expect(subject.small_image).to be_a_kind_of Image }
        end

        describe '#medium_image' do
          it { expect(subject.small_image).to be_a_kind_of Image }
        end

        describe '#large_image' do
          it { expect(subject.small_image).to be_a_kind_of Image }
        end

        describe '#image_sets' do
          it { expect(subject.image_sets).to be_a_kind_of ImageSets }
        end

        describe '#offer_summary' do
          it { expect(subject.offer_summary).to be_a_kind_of OfferSummary }
        end
      end
    end
  end
end