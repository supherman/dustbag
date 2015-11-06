require 'spec_helper'

module Dustbag
  describe Accessories do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', Accessory
  end
end
