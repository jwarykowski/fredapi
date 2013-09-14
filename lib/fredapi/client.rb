require 'fredapi/connection'
require 'fredapi/request'

require 'fredapi/client/category'

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

    include FREDAPI::Client::Category
  end
end