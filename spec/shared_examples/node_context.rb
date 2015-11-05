shared_context 'load xml from fixture' do |file_name|
  let(:calc_file_name) { described_class.name.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase.split('::').last }
  let(:xml) { Ox.parse(File.read("spec/fixtures/#{file_name || calc_file_name}.xml")) }

  subject { described_class.new(xml) }
end
