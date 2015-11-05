shared_examples 'a node' do
  it { expect(subject).to respond_to :subnode }
  it { expect(subject).to respond_to :subnode_text }
  it { expect(subject).to respond_to :repeated_subnodes}
  it { expect(subject).to respond_to :repeated_subnodes_text}
  it { expect(subject).to respond_to :text }
  it { expect(subject).to respond_to :value }
  it { expect(subject).to respond_to :attributes }
end
