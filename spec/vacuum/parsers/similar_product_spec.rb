require 'spec_helper'
require 'shared_examples/node'

module Vacuum
  module Parsers
    describe SimilarProduct do
      include_context 'load xml from fixture'

      it_behaves_like 'a node'

      describe '#asin' do
        it { expect(subject.asin).to eq 'B0146PPAG8' }
      end

      describe '#title' do
        it { expect(subject.title).to eq "Moto G (3rd Gen) Tempered Glass Screen Protector, PLESON Motorola Moto G 3rd Generation Screen Protector [Lifetime No-Hassle Warranty] 0.3mm Premium HD Clear Glass Screen Protector for Moto G3" }
      end
    end
  end
end
