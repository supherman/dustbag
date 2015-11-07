require 'spec_helper'

module Dustbag
  describe Offer do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#condition' do
      it { expect(subject.condition).to eq 'New' }
    end

    describe '#id' do
      it { expect(subject.id).to eq 'DZEJaOVZkxOW3bnN9SFvLNIEVwWDB3Y0HBG5zgBQ7jwJI9gANnOgNkJYiwRiuWUAx8GXFAWOjSrH4nrN4grN4gmtpEZHnkVZy4bHkNzvMu2G18d6bykCLQ%3D%3D' }
    end

    describe '#price' do
      it { expect(subject.price).to be_a_kind_of Money }
      it { expect(subject.price.format).to eq '$179.62' }
    end

    describe '#amount_saved' do
      it { expect(subject.amount_saved).to be_a_kind_of Money }
      it { expect(subject.amount_saved.format).to eq '$0.37' }
    end

    describe '#availability' do
      it { expect(subject.availability).to eq 'Usually ships in 24 hours' }
    end

    describe '#availability_attributes' do
      it { expect(subject.availability_attributes).to be_a_kind_of AvailabilityAttributes }
    end

    describe '#eligible_for_super_saver_shipping?' do
      it { expect(subject.eligible_for_super_saver_shipping?).to be_truthy }
    end

    describe '#eligible_for_prime?' do
      it { expect(subject.eligible_for_prime?).to be_truthy }
    end
  end
end
