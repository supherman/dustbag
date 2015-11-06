shared_examples 'a simple product' do
  it { expect(subject).to respond_to :asin }
  it { expect(subject).to respond_to :title }
end
