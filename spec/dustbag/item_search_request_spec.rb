require 'spec_helper'

module Dustbag
  describe ItemSearchRequest do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#keywords' do
      it { expect(subject.keywords).to eq 'moto g' }
    end

    describe '#response_group' do
      it { expect(subject.response_group).to eq 'Small' }
    end

    describe '#search_index' do
      it { expect(subject.search_index).to eq 'All' }
    end
  end
end
