require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe OfferSummary do
      let(:offer_summary) { Ox.parse(File.read('spec/fixtures/offer_summary.xml')) }
    end
  end
end
