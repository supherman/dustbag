module Dustbag
  module Parser
    extend self

    class Error < RuntimeError; end

    def parse(body)
      document = Ox.parse(body)

      raise Error.new('Not a Ox::Document') unless document.is_a?(Ox::Document)

      response_type = document.root.name

      case response_type
      when 'ItemSearchResponse'
        ItemSearchResponse.new(document.root)
      else
        raise Error.new(response_type + ' is not implemented!')
      end
    end

    autoload :CollectionNode, 'dustbag/parser/collection_node'
    autoload :MapCollectionNode, 'dustbag/parser/map_collection_node'
    autoload :Node, 'dustbag/parser/node'
  end
end
