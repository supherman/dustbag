require 'spec_helper'

module Dustbag
  describe Languages do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', Language
  end
end
