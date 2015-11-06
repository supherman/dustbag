require 'spec_helper'

module Dustbag
  describe ItemLink do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#description' do
      it { expect(subject.description).to eq 'Technical Details' }
    end

    describe '#url' do
      it { expect(subject.url).to eq 'http://www.amazon.com/Motorola-Moto-3rd-Generation-Unlocked/dp/tech-data/B00ZQVSKS2%3FSubscriptionId%3DMyAccessKeyId%26tag%3Daffiliate-tag%26linkCode%3Dxm2%26camp%3D2025%26creative%3D386001%26creativeASIN%3DB00ZQVSKS2' }
    end
  end
end
