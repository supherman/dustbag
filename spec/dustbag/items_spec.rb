require 'spec_helper'

module Dustbag
  describe Items do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', Item

    describe '#request' do
      it { expect(subject.request).to be_a_kind_of Request }
    end

    describe '#total_results' do
      it { expect(subject.total_results).to eq 1630787 }
    end

    describe '#total_pages' do
      it { expect(subject.total_pages).to eq 163079 }
    end

    describe '#more_search_results_url' do
      it { expect(subject.more_search_results_url).to eq 'http://www.amazon.com/gp/redirect.html?linkCode=xm2&SubscriptionId=MyAccessKeyId&location=http%3A%2F%2Fwww.amazon.com%2Fgp%2Fsearch%3Fkeywords%3Dmoto%2Bg%26url%3Dsearch-alias%253Daws-amazon-aps&tag=affiliate-tag&creative=386001&camp=2025' }
    end
  end
end
