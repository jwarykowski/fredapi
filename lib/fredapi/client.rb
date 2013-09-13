require 'bwapi/connection'
require 'bwapi/request'

require 'bwapi/client/category'

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

      netrc_credentials opts[:netrc]
    end

    include FREDAPI::Connection
    include FREDAPI::Request

    include BWAPI::Client::Category
  end
end