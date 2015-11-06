require 'spec_helper'

module Dustbag
  describe CustomerReviews do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#iframe_url' do
      it { expect(subject.iframe_url).to eq 'http://www.amazon.com/reviews/iframe?akid=AKIAIHNK3TBF4L5EDREQ&alinkCode=xm2&asin=B00ZQVSKSM&atag=magmalabs-20&exp=2015-11-06T18%3A09%3A07Z&v=2&sig=LVQAhPoL48XLrPTdDEa%2FjC4h8r81FFEVqO2OmhIosT8%3D' }
    end

    describe '#any?' do
      it { expect(subject.any?).to be_truthy }
    end
  end
end
