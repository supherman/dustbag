module Dustbag
  module Price
    extend self

    def parse(xml_node)
      xml_node && begin
        amount   = xml_node.locate('Amount').first
        currency = xml_node.locate('Currency').first
        Money.new(amount && amount.text, currency && currency.text)
      end
    end
  end
end
