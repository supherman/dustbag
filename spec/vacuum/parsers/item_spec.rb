require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Item do
      include_context 'load xml from fixture'

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
        include_context 'load xml from fixture', 'item_medium'

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

      context 'item response for the large response group' do
        include_context 'load xml from fixture', 'item_large'

        describe '#sales_rank' do
          it { expect(subject.sales_rank).to eq 399 }
        end

        describe '#offers' do
          it { expect(subject.offers).to be_a_kind_of Offers }
        end

        describe '#customer_reviews' do
          it { expect(subject.customer_reviews).to be_a_kind_of CustomerReviews }
        end

        describe '#editorial_reviews' do
          it { expect(subject.editorial_reviews).to be_a_kind_of EditorialReviews }
        end

        describe '#similar_products' do
          it { expect(subject.similar_products).to be_a_kind_of SimilarProducts }
        end

        describe '#browse_nodes' do
          it { expect(subject.browse_nodes).to be_a_kind_of BrowseNodes }
        end
      end

      context 'item with accessories' do
        include_context 'load xml from fixture', 'item_with_accessories'

        describe '#accessories' do
          it { expect(subject.accessories).to be_a_kind_of(Accessories) }
          it { expect(subject.accessories).to_not be_empty }
        end
      end

      context 'item with variations' do
        include_context 'load xml from fixture', 'item_with_variations'

        describe '#variation_summary' do
          it { expect(subject.variation_summary).to be_a_kind_of VariationSummary }
        end

        describe '#variations' do
          it { expect(subject.variations).to be_a_kind_of Variations }
          it { expect(subject.variations).to_not be_empty }
        end
      end

      context 'item with variation attributes' do
        include_context 'load xml from fixture', 'item_with_variation_attributes'

        it { expect(subject.variation_attributes).to_not be_empty }
        it { expect(subject.variation_attributes).to be_a_kind_of VariationAttributes }
      end
    end
  end
end
