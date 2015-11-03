shared_examples 'a map collection node' do
  it { expect(subject).to_not be_empty }

  specify do
    subject.each do |node|
      expect(subject[node.first]).to_not be_nil
    end
  end
end
