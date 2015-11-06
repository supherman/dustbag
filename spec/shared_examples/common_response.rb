require 'shared_examples/node'

shared_examples 'a common response' do
  it_behaves_like 'a node'

  it { expect(subject.operation_request).to be_a_kind_of Dustbag::OperationRequest }
end
