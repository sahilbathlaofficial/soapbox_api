# SoapboxApi

This provides an API for accessing Soapbox's feature such as extracting posts or composing posts from 
a 3rd Party Application

## Installation

Add this line to your application's Gemfile:

    gem 'soapbox_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install soapbox_api

## Usage

Being a initial API library I have only added one functionality to fetch posts. So once you have your consumer key and secret from your soapBox app, add the following in your controller file. i.e:

class UsersController < ApplicationController
  def index
    token = { consumer_key: 'YOUR_KEY', consumer_secret: 'YOUR_Secret' }
    client = SoapboxApi::UsersPosts.new(token)
    render text: client.fetch_posts
  end
end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
