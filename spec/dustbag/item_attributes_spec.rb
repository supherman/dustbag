require 'spec_helper'

module Dustbag
  describe ItemAttributes do
    include_context 'load xml from fixture'

    it_behaves_like 'a node'

    describe '#manufacturer' do
      it { expect(subject.manufacturer).to eq 'Motorola' }
    end

    describe '#product_group' do
      it { expect(subject.product_group).to eq 'Wireless' }
    end

    describe '#title' do
      it { expect(subject.title).to eq 'Motorola Moto G (3rd Generation) - Black - 8 GB - Global GSM Unlocked Phone' }
    end

    describe '#binding' do
      it { expect(subject.binding).to eq 'Unlocked Phone' }
    end

    describe '#brand' do
      it { expect(subject.brand).to eq 'Motorola' }
    end

    describe '#color' do
      it { expect(subject.color).to eq 'Black' }
    end

    describe '#ean' do
      it { expect(subject.ean).to eq '0701799787331' }
    end

    describe '#ean_list' do
      it { expect(subject.ean_list).to_not be_empty }
      it { expect(subject.ean_list).to include('0701799787331') }
      it { expect(subject.ean_list).to include('0723755007703') }
    end

    describe '#features' do
      it { expect(subject.features).to_not be_empty }
      it { expect(subject.features.first).to eq 'Advanced water resistance'}
      it { expect(subject.features.last).to eq '4G LTE Speed; Browse, stream music, watch video, and play games at blazing speed.'}
    end

    describe '#eligible_for_trade_in?' do
      context 'when eligible'
      context 'when not eligible'
    end

    describe '#item_dimensions' do
      it { expect(subject.item_dimensions).to be_a_kind_of Dimensions }
    end

    describe '#labels' do
      it { expect(subject.labels).to_not be_empty }
      it { expect(subject.labels.first).to eq 'Motorola' }
    end

    describe '#list_price' do
      it { expect(subject.list_price).to be_a_kind_of Money }
    end

    describe '#model' do
      it { expect(subject.model).to eq 'XT1540' }
    end

    describe '#mpn' do
      it { expect(subject.mpn).to eq '00770NARTL' }
    end

    describe '#package_dimensions' do
      it { expect(subject.package_dimensions).to be_a_kind_of Dimensions }
    end

    describe '#package_quantity' do
      it { expect(subject.package_quantity).to eq 1 }
    end

    describe '#part_number' do
      it { expect(subject.part_number).to eq '00770NARTL' }
    end

    describe '#product_type_name' do
      it { expect(subject.product_type_name).to eq 'WIRELESS_ACCESSORY' }
    end

    describe '#publisher' do
      it { expect(subject.publisher).to eq 'Motorola' }
    end

    describe '#size' do
      it { expect(subject.size).to eq '8 GB' }
    end

    describe '#studio' do
      it { expect(subject.studio).to eq 'Motorola' }
    end

    describe '#trade_in_value' do
      it { expect(subject.trade_in_value).to be_a_kind_of Money }
    end

    describe '#upc' do
      it { expect(subject.upc).to eq '723755007703' }
    end

    describe '#upc_list' do
      it { expect(subject.upc_list).to_not be_empty }
      it { expect(subject.upc_list).to include('723755007703') }
      it { expect(subject.upc_list).to include('701799787331') }
    end

    context 'when a movie' do
      include_context 'load xml from fixture', 'movie_item_attributes'

      describe '#actors' do
        it { expect(subject.actors).to eq ['Robert Downey Jr.', 'Chris Hemsworth', 'Mark Ruffalo', 'Chris Evans', 'Scarlett Johansson'] }
      end

      describe '#creators' do
        it { expect(subject.creators).to eq({ 'Producer' => 'Kevin Feige', 'Writer' => 'Joss Whedon' }) }
      end

      describe '#director' do
        it { expect(subject.director).to eq 'Joss Whedon' }
      end

      describe '#audience_rating' do
        it { expect(subject.audience_rating).to eq 'PG-13 (Parental Guidance Suggested)' }
      end

      describe '#genre' do
        it { expect(subject.genre).to eq 'Action' }
      end

      describe '#languages' do
        it { expect(subject.languages).to be_a_kind_of Languages }
        it { expect(subject.languages.first).to be_a_kind_of Language }
      end

      describe '#release_date' do
        it { expect(subject.release_date).to eq Date.parse('2015-10-02') }
      end

      describe '#running_time' do
        it { expect(subject.running_time).to be_a_kind_of Dimension }
        it { expect(subject.running_time.value).to eq 189 }
        it { expect(subject.running_time.units).to eq 'minutes'}
      end

      describe '#adult_product?' do
        it { expect(subject.adult_product?).to be_falsy }
      end
    end

    context 'when a book' do
      include_context 'load xml from fixture', 'book_item_attributes'

      describe '#authors' do
        it { expect(subject.authors).to eq ['Ryan Bigg', 'Yehuda Katz', 'Steve Klabnik', 'Rebecca Skinner'] }
      end

      describe '#isbn' do
        it { expect(subject.isbn).to eq '1617291099' }
      end

      describe '#number_of_items' do
        it { expect(subject.number_of_items).to eq 1 }
      end

      describe '#number_of_pages' do
        it { expect(subject.number_of_pages).to eq 576 }
      end

      describe '#package_quantity' do
        it { expect(subject.package_quantity).to eq 1 }
      end

      describe '#publication_date' do
        it { expect(subject.publication_date).to eq Date.parse('2015-09-19') }
      end
    end
  end
end
