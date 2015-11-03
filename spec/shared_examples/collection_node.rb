require 'shared_examples/node'

shared_examples 'a collection node of' do |member_klass|
  it_behaves_like 'a node'

  it { expect(subject).to_not be_empty }

  specify do
    subject.each do |node|
      expect(node).to_not be_nil
      expect(node).to be_a_kind_of member_klass
    end
  end
end

