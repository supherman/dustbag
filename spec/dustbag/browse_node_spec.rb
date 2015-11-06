require 'spec_helper'

module Dustbag
  describe BrowseNode do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#id' do
      it { expect(subject.id).to eq 2407749011 }
    end

    describe '#name' do
      it { expect(subject.name).to eq 'Unlocked Cell Phones' }
    end

    describe '#ancestors' do
      it { expect(subject.ancestors).to be_a_kind_of BrowseNodes }
    end

    describe '#category_root?' do
      context 'when category root' do
        include_context 'load xml from fixture', 'root_browse_node'

        it { expect(subject.category_root?).to be_truthy }
      end

      context 'when not category root' do
        it { expect(subject.category_root?).to be_falsy }
      end
    end
  end
end
