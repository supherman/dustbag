require 'spec_helper'

module Dustbag
  describe Offers do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', Offer
  end
end
