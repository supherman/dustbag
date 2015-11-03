require 'spec_helper'
require 'shared_examples/map_collection_node'

module Vacuum
  module Parsers
    describe HttpHeaders do
      let(:headers) { Ox.parse(File.read('spec/fixtures/http_headers.xml')) }

      subject { described_class.new(headers) }

      it_behaves_like 'a map collection node'

      it { expect(subject['UserAgent']).to_not be_nil }
    end
  end
end
