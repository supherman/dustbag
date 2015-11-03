shared_examples 'a common response' do
  it { expect(subject.operation_request).to be_a_kind_of Vacuum::Parsers::OperationRequest }
end
