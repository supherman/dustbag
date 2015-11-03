shared_examples 'a node' do
  it { expect(subject).to respond_to :subnode }
  it { expect(subject).to respond_to :subnode_text }
end

