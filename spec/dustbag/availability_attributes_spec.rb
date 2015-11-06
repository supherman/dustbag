require 'spec_helper'

module Dustbag
  describe AvailabilityAttributes do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#type' do
      it { expect(subject.type).to eq 'now' }
    end

    describe '#maximum_hours' do
      it { expect(subject.maximum_hours).to eq 0 }
    end

    describe '#minimum_hours' do
      it { expect(subject.minimum_hours).to eq 0 }
    end
  end
end
