require 'faraday'

module FREDAPI
  # Configuration module to set default and custom client credentials
  module Configuration

    OPTION_KEYS = [
      'adapter',
      'api_endpoint',
      'user_agent',
      'api_key',
      'file_type'
    ].freeze

    DEFAULT_ADAPTER       = Faraday.default_adapter
    DEFAULT_API_ENDPOINT  = 'http://api.stlouisfed.org/'
    DEFAULT_USER_AGENT    = "FREDAPI Ruby Gem #{FREDAPI::VERSION}".freeze
    DEFAULT_FILE_TYPE     = 'json'

    attr_accessor *OPTION_KEYS

    # Extend hook
    def self.extended(base)
      base.reset
    end

    # Set configuration options using a block
    def configure
      yield self
    end

    # Convert option_keys to hash and return
    def options
      OPTION_KEYS.inject({}){|o,k|o.merge!(k => send(k))}
    end

    # Reset the configuration options
    def reset
      self.adapter      = DEFAULT_ADAPTER
      self.user_agent   = DEFAULT_USER_AGENT
      self.api_endpoint = DEFAULT_API_ENDPOINT
      self.file_type    = DEFAULT_FILE_TYPE
    end
  end
end