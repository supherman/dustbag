# Dustbag
[![Build Status](https://snap-ci.com/supherman/dustbag/branch/master/build_image)](https://snap-ci.com/supherman/dustbag/branch/master)

**Dustbag** is a set of response parsers for [Vacumm](https://github.com/hakanensari/vacuum) (a Ruby wrapper of the [Amazon Product Advertising API](https://affiliate-program.amazon.com/gp/advertising/api/detail/main.html)


![](https://sightsandsoundsinc.files.wordpress.com/2010/06/dust-image.jpg)
[![Code Climate](https://codeclimate.com/github/supherman/dustbag/badges/gpa.svg)](https://codeclimate.com/github/supherman/dustbag)
[![Test Coverage](https://codeclimate.com/github/supherman/dustbag/badges/coverage.svg)](https://codeclimate.com/github/supherman/dustbag/coverage)

Vacuum is an excellent client for the Amazon Product Advertising API, it handles all the possible interactons with the API, but unfortunately you're required to implement your own response parse mechanisms. So Vacuum just give us a ton of dust (in form of xml), which is not bad, because that's not its job, dustbag's job is to handle all that dust and give it a meaningful use.

## Installation

Add this line to your application’s Gemfile:

```ruby
gem 'dustbag'
```

## Prerequisite

You'll need credentials to access to the Amazon Product Advertising API, also an affiliate tag, you can get them following [this instructions](https://affiliate-program.amazon.com/gp/advertising/api/detail/your-account.html?ie=UTF8&pf_rd_i=assoc-api-thank-you-0&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=&pf_rd_r=&pf_rd_s=assoc-center-1&pf_rd_t=501&ref_=amb_link_83957991_1&rw_useCurrentProtocol=1)

## Usage

```ruby
require 'vacuum'
require 'dustbag'

request = Vacuum.new
request.associate_tag = 'tag'

response = request.item_search(
  query: {
    'Keywords' => 'Architecture',
    'SearchIndex' => 'Books'
  }
)

response.parser = Dustbag::Parser

response.parse

```

You'll get an ```ItemSearchReponse``` object, this object has an 'items' method which is a collection of the Items matchig your search, if you want to see what can you do with these itmes, look at the source code of the [```Item``` class](https://github.com/supherman/dustbag/blob/master/lib/dustbag/item.rb)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
