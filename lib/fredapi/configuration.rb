require 'faraday'

module FREDAPI
  # Configuration module to set default and custom client credentials
  module Configuration

    OPTION_KEYS = [
      :api_endpoint,
      :user_agent,
      :api_key,
      :file_type,
      :netrc,
      :netrc_file
    ].freeze

    DEFAULT_ADAPTER       = Faraday.default_adapter
    DEFAULT_API_ENDPOINT  = 'http://api.stlouisfed.org/'
    DEFAULT_USER_AGENT    = "FREDAPI Ruby Gem #{FREDAPI::VERSION}".freeze
    DEFAULT_FILE_TYPE     = 'json'
    DEFAULT_NETRC_FILE    = File.join(ENV['HOME'], '.netrc')

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

    # Set username and password via netrc
    #
    # @param netrc [Boolean] Netrc status
    def netrc_credentials netrc=false
      return unless netrc

      require 'netrc'
      file = Netrc.read netrc_file

      # Get credentials using host
      netrc_host = URI.parse(api_endpoint).host
      creds = file[netrc_host]
      raise 'You are missing your .netrc file or the host provided has no credentials!'.red.underline if creds.nil?
      self.username = creds.shift
      self.password = creds.shift
    rescue LoadError
      raise "Please install netrc gem for .netrc support".red.underline
    end

    # Reset the configuration options
    def reset
      self.user_agent          = DEFAULT_USER_AGENT
      self.api_endpoint        = DEFAULT_API_ENDPOINT
      self.file_type           = DEFAULT_FILE_TYPE
      self.netrc               = false
      self.netrc_file          = DEFAULT_NETRC_FILE
    end
  end
end