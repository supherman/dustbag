require 'spec_helper'

module Dustbag
  describe HttpHeaders do
    include_context 'load xml from fixture'

    it_behaves_like 'a map collection node'

    it { expect(subject['UserAgent']).to_not be_nil }
  end
end
