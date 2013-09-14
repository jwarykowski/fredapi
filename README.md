# fredapi
A Ruby wrapper for the [Federal Reserve Economic Data API](http://api.stlouisfed.org/docs/fred/overview.html) (FRED).

## Documentation
* Original documenation: <http://api.stlouisfed.org/docs/fred/>
* Gem documentation: <http://rubydoc.info/gems/fredapi>

## Getting Started
In order to be able to send API requests you'll first need to install the `fredapi` gem.

```ruby
gem install fredapi
```

You will need to register and request an API key in order to requests. To register please click [here](http://research.stlouisfed.org/useraccount/register/step1). Request an API key by following the instructions [here](http://api.stlouisfed.org/api_key.html). 

Once you have completed the steps above, you can now create an instance of a `FREDAPI::Client` and set your API key as appropriate:

```ruby
require 'fredapi'
api = FREDAPI::Client.new 'api_key' => '123456789'
```

If you now look at your `FREDAPI` object instance it will be similar to the following:

```ruby
<FREDAPI::Client:0x007ffb89bcf3e0
@adapter=:net_http,
@api_endpoint="http://api.stlouisfed.org/",
@api_key='123456789',
@file_type="json",
@user_agent="FREDAPI Ruby Gem 1.0.0">
```

By the default the file_type is set to `json`. This can be easily be changed by simply updating the instance variable to be set to `xml`:

```ruby
api.file_type = 'xml'
```

Please note that when sending any FRED API request if you don't pass an `api_key` or `file_type` parameter the values on the `FREDAPI::Client` instance will be used as default.

## Example requests
Now that you have an `FREDAPI::Client` instance with your API key you can now make requests to the FRED API. For example to send a category get request do the following:

```ruby
api.category 'category_id' => 125
```

The response is returned within a `Hashie::Mash` instance.

```ruby
{"categories"=>[{"id"=>125, "name"=>"Trade Balance", "parent_id"=>13}]}
```

To find out more information about `Hashie` please visit the following link: <https://github.com/intridea/hashie>. To see all documention on the various FREDAPI endpoint method calls please visit: <http://rubydoc.info/gems/fredapi>

## Tests
There are a number of unit tests which are included as part of this project, please run:

```ruby
rspec spec
```
      
Please note that a number of tests still need to be added so I don't currently have complete coverage, subject to workload these will be slowly added over the next few months.

## Feedback
I would be more than happy to recieve feedback, please email me at: jonathan.chrisp@gmail.com.

