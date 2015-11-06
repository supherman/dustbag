require 'spec_helper'

module Dustbag
  describe EditorialReviews do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', EditorialReview
  end
end
