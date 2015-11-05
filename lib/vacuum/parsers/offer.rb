module Vacuum
  module Parsers
    class Offer
      include Parser::Node

      def condition
        offer_attrs = subnode('OfferAttributes')
        condition   = offer_attrs && offer_attrs.locate('Condition').first
        condition && condition.text
      end

      def id
        id = offer_listing && offer_listing.locate('OfferListingId').first
        id && id.text
      end

      def price
        price = offer_listing && offer_listing.locate('Price').first
        Price.new(price)
      end

      def amount_saved
        savings = offer_listing && offer_listing.locate('AmountSaved').first
        Price.new(savings)
      end

      def availability
        availability = offer_listing && offer_listing.locate('Availability').first
        availability && availability.text
      end

      def eligible_for_super_saver_shipping?
        eligible = offer_listing && offer_listing.locate('IsEligibleForSuperSaverShipping').first
        eligible && eligible.text == '1'
      end

      def eligible_for_prime?
        eligible = offer_listing && offer_listing.locate('IsEligibleForPrime').first
        eligible && eligible.text == '1'
      end

      def availability_attributes
        availability = offer_listing && offer_listing.locate('AvailabilityAttributes').first
        AvailabilityAttributes.new(availability)
      end

      private

      def offer_listing
        subnode('OfferListing')
      end
    end
  end
end
