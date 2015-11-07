# Dustbag
[![Build Status](https://snap-ci.com/supherman/dustbag/branch/master/build_image)](https://snap-ci.com/supherman/dustbag/branch/master)
[![Code Climate](https://codeclimate.com/github/supherman/dustbag/badges/gpa.svg)](https://codeclimate.com/github/supherman/dustbag)
[![Test Coverage](https://codeclimate.com/github/supherman/dustbag/badges/coverage.svg)](https://codeclimate.com/github/supherman/dustbag/coverage)

**Dustbag** is a set of response parsers for [Vacumm](https://github.com/hakanensari/vacuum) (a Ruby wrapper of the [Amazon Product Advertising API](https://affiliate-program.amazon.com/gp/advertising/api/detail/main.html)


![](https://sightsandsoundsinc.files.wordpress.com/2010/06/dust-image.jpg)

Vacuum is an excellent client for the Amazon Product Advertising API, it handles all the possible interactons with the API, but unfortunately you're required to implement your own response parse mechanisms. So Vacuum just give us a ton of dust (in form of xml), which is not bad, because that's not its job, dustbag's job is to handle all that dust and give it a meaningful use.

## Installation

Add this line to your application’s Gemfile:

```ruby
gem 'dustbag'
```

## Prerequisite

You'll need credentials to access to the Amazon Product Advertising API, also an affiliate tag, you can get them following [this instructions](https://affiliate-program.amazon.com/gp/advertising/api/detail/your-account.html?ie=UTF8&pf_rd_i=assoc-api-thank-you-0&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=&pf_rd_r=&pf_rd_s=assoc-center-1&pf_rd_t=501&ref_=amb_link_83957991_1&rw_useCurrentProtocol=1)

Once you get your credentials, you'll need to configure Vacuum to use your credentials, you have two options, you can set the following env vars:

```zsh
export AWS_ACCESS_KEY_ID=key
export AWS_SECRET_ACCESS_KEY=secret
```

Or, you can explicitly say to vacuum to use your credentials:

```Ruby
request.configure(
    aws_access_key_id: 'key',
    aws_secret_access_key: 'secret',
    associate_tag: 'tag'
)
```

One more thing, this gem makes use of the [Money](https://github.com/RubyMoney/money) gem, money makes use of i18n to format money strings, by default this behaviour is disabled, if you want to enable i18n with money, you can enable it by setting the next env var:

```
export USE_I18N_FOR_MONEY=true
```


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

## Project status

Right now, there is only one response parser implemented (ItemSearchResponse), the remaining work is to implement the following responses:

- [BrowseNodeLookup](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/BrowseNodeLookup.html)
- [ItemLookup](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/ItemLookup.html)
- [SimilarityLookup](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/SimilarityLookup.html)
- [CartAdd](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/CartAdd.html)
- [CartClear](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/CartClear.html)
- [CartCreate](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/CartCreate.html)
- [CartGet](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/CartGet.html)
- [CartModify](http://docs.aws.amazon.com/AWSECommerceService/latest/DG/CartModify.html)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
