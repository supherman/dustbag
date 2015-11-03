require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe ItemLink do
      let(:item_link) { Ox.parse(File.read('spec/fixtures/item_link.xml')) }

      subject { described_class.new(item_link) }

      it_behaves_like 'a node'

      describe '#description' do
        it { expect(subject.description).to eq 'Technical Details' }
      end

      describe '#url' do
        it { expect(subject.url).to eq 'http://www.amazon.com/Motorola-Moto-3rd-Generation-Unlocked/dp/tech-data/B00ZQVSKS2%3FSubscriptionId%3DMyAccessKeyId%26tag%3Daffiliate-tag%26linkCode%3Dxm2%26camp%3D2025%26creative%3D386001%26creativeASIN%3DB00ZQVSKS2' }
      end
    end
  end
end
