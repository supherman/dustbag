module Dustbag
  class EditorialReview
    include Parser::Node

    text_attributes :source, :content

    def link_suppressed?
      subnode_text('IsLinkSuppressed') == '1'
    end
  end
end
