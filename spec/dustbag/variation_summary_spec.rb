require 'spec_helper'

module Dustbag
  describe VariationSummary do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#lowest_price' do
      it { expect(subject.lowest_price).to be_a_kind_of Money }
      it { expect(subject.lowest_price.format).to eq '$89.99'}
    end

    describe '#highest_price' do
      it { expect(subject.highest_price).to be_a_kind_of Money }
      it { expect(subject.highest_price.format).to eq '$119.99'}
    end
  end
end
