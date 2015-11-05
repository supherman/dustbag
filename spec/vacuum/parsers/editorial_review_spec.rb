require 'spec_helper'
require 'shared_examples/collection_node'

module Vacuum
  module Parsers
    describe EditorialReview do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#source' do
        it { expect(subject.source).to eq 'Product Description' }
      end

      describe '#content' do
        it { expect(subject.content).to eq 'Quad core processing power in a great value product. 4.5" display. 5MP rear camera with a VGA front facing camera. Great 24hr battery performance with a 2390mAh battery. Personalize with colored bands.' }
      end

      describe '#link_suppressed?' do
        it { expect(subject.link_suppressed?).to be_falsy }
      end
    end
  end
end


