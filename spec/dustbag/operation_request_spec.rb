require 'spec_helper'
require 'shared_examples/node'
require 'shared_examples/node_context'

module Dustbag
  describe OperationRequest do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#request_id' do
      it { expect(subject.request_id).to eq '0adda2e2-434e-44f4-a216-dbdf4c593d1b' }
    end

    describe '#arguments' do
      it { expect(subject.arguments).to be_a_kind_of Arguments }
      it { expect(subject.arguments).to_not be_empty }
    end

    describe '#http_headers' do
      it { expect(subject.http_headers).to be_a_kind_of HttpHeaders }
      it { expect(subject.http_headers).to_not be_empty }
    end

    describe '#request_processing_time' do
      it { expect(subject.request_processing_time).to eq '0.2921170000000000' }
    end
  end
end
