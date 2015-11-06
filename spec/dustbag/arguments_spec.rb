require 'spec_helper'

module Dustbag
  describe Arguments do
    include_context 'load xml from fixture'

    it_behaves_like 'a map collection node'
  end
end
