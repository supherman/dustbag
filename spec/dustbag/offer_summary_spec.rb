require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Dustbag
  describe OfferSummary do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#lowest_new_price' do
      it { expect(subject.lowest_new_price).to be_a_kind_of Price }
      it { expect(subject.lowest_new_price.formatted_price).to eq '$14.99' }
    end

    describe '#total_new' do
      it { expect(subject.total_new).to eq 1 }
    end

    describe '#total_used' do
      it { expect(subject.total_used).to eq 0 }
    end

    describe '#total_collectible' do
      it { expect(subject.total_collectible).to eq 0 }
    end

    describe '#total_refurbished' do
      it { expect(subject.total_refurbished).to eq 0 }
    end
  end
end
