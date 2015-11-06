require 'spec_helper'

module Dustbag
  describe SimilarProducts do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', SimilarProduct
  end
end
