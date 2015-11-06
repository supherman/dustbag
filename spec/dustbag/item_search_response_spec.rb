require 'spec_helper'

module Dustbag
  describe ItemSearchResponse do
    include_context 'load xml from fixture'

    it_behaves_like 'a common response'

    describe '#items' do
      it { expect(subject.items).to be_a_kind_of Items }
    end
  end
end
