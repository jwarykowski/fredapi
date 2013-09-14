require 'fredapi/client/source/releases'

module FREDAPI
  class Client
    # Source module for fred/source endpoint
    module Source

      # Get a source of economic data
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
      # @option opts [String] file_type A key or file extension that indicates the type of file to send
      # @option opts [Integer] source_id The id for a source
      # @option opts [String] realtime_start The start of the real-time period
      # @option opts [String] realtime_end The end of the real-time period
      # @return [Hashie::Mash] Hash containing the results
      def source opts={}
        get "fred/source", opts
      end

      include FREDAPI::Client::Source::Releases

    end
  end
end