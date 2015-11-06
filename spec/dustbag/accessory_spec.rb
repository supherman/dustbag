require 'spec_helper'

module Dustbag
  describe Accessory do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'
    it_behaves_like 'a simple product'
  end
end
