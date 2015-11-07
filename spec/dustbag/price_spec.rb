require 'spec_helper'

module Dustbag
  describe Price do
    let(:xml) { Ox.parse(File.read('spec/fixtures/price.xml')) }

    describe '#parse' do
      it { expect(subject.parse(xml)).to be_a_kind_of Money }
      it { expect(subject.parse(xml).to_s).to eq '179.99' }
      it { expect(subject.parse(xml).currency).to be_a_kind_of Money::Currency }
      it { expect(subject.parse(xml).currency.iso_code).to eq 'USD' }

      context 'when xml is nil' do
        it { expect(subject.parse(nil)).to be_nil }
      end
    end
  end
end
