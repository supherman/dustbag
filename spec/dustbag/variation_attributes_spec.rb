require 'spec_helper'

module Dustbag
  describe VariationAttributes do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', VariationAttribute
  end
end
