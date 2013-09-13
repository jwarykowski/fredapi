require 'fredapi/version'
require 'fredapi/configuration'

# FREDAPI namespace module
module FREDAPI
  extend Configuration
  class << self

    # Alias for FREDAPI::Client.new
    #
    # @return [FREDAPI::Client]
    def new opts={}
      FREDAPI::Client.new opts
    end

    # Delegate to FREDAPI::Client.new
    def method_missing method, *args, &block
      return super unless new.respond_to? method
      new.send method, *args, &block
    end

    def respond_to? method, include_private=false
      new.respond_to?(method, include_private) || super(method, include_private)
    end

  end
end