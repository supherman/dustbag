require 'spec_helper'

module Dustbag
  describe ImageSets do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', ImageSet
  end
end
