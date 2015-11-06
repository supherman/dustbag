require 'spec_helper'

module Dustbag
  describe Image do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'
  end
end
