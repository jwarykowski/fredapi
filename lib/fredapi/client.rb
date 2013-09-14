require 'fredapi/connection'
require 'fredapi/request'

require 'fredapi/client/category'
require 'fredapi/client/related_tags'
require 'fredapi/client/release'
require 'fredapi/client/releases'
require 'fredapi/client/series'
require 'fredapi/client/source'
require 'fredapi/client/sources'
require 'fredapi/client/tags'

module FREDAPI
  # Client class to create FREDAPI instances
  class Client

    attr_accessor *Configuration::OPTION_KEYS

    def initialize opts={}
      # Merge opts
      opts = FREDAPI.options.merge opts

      # Create instance variables
      Configuration::OPTION_KEYS.each do |k|
        send "#{k}=", opts[k]
      end
    end

    include FREDAPI::Connection
    include FREDAPI::Request

    # API endpoints
    include FREDAPI::Client::Category
    include FREDAPI::Client::Release
    include FREDAPI::Client::Releases
    include FREDAPI::Client::Series
    include FREDAPI::Client::Source
    include FREDAPI::Client::Tags

  end
end