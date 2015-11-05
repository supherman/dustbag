require 'vacuum/parser/node'
require 'vacuum/parser/collection_node'
require 'vacuum/parser/map_collection_node'

require 'vacuum/parsers/arguments'
require 'vacuum/parsers/http_headers'
require 'vacuum/parsers/operation_request'
require 'vacuum/parsers/common'
require 'vacuum/parsers/item_search_request'
require 'vacuum/parsers/request'
require 'vacuum/parsers/price'
require 'vacuum/parsers/image'
require 'vacuum/parsers/image_set'
require 'vacuum/parsers/image_sets'
require 'vacuum/parsers/offer_summary'
require 'vacuum/parsers/dimensions'
require 'vacuum/parsers/duration'
require 'vacuum/parsers/language'
require 'vacuum/parsers/item_attributes'
require 'vacuum/parsers/item_link'
require 'vacuum/parsers/item_links'
require 'vacuum/parsers/item'
require 'vacuum/parsers/items'
require 'vacuum/parsers/item_search_response'

module Vacuum
  module Parser
    extend self

    class Error < RuntimeError; end

    def parse(body)
      document = Ox.parse(body)

      raise Error.new('Not a Ox::Document') unless document.is_a?(Ox::Document)

      response_type = document.root.name

      case response_type
      when 'ItemSearchResponse'
        Parsers::ItemSearchResponse.new(document.root)
      else
        raise Error.new(response_type + ' is not implemented!')
      end
    end

  end
end
