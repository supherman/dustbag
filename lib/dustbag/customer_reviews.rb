module Dustbag
  class CustomerReviews
    include Parser::Node

    text_attributes iframe_url: 'IFrameURL'

    def any?
      subnode_text('HasReviews') == 'true'
    end
  end
end
