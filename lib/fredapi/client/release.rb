require 'fredapi/client/release/dates'
require 'fredapi/client/release/series'
require 'fredapi/client/release/sources'
require 'fredapi/client/release/tags'
require 'fredapi/client/release/related_tags'

module FREDAPI
  class Client
    # Release module for fred/release endpoint
    module Release

      # Get a release of economic data
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
      # @option opts [String] file_type A key or file extension that indicates the type of file to send
      # @option opts [Integer] release_id The id for a release
      # @option opts [String] realtime_start The start of the real-time period
      # @option opts [String] realtime_end The end of the real-time period
      # @return [Hashie::Mash] Hash containing the results
      def release opts={}
        get "fred/release", opts
      end

      include FREDAPI::Client::Release::Dates
      include FREDAPI::Client::Release::Series
      include FREDAPI::Client::Release::Sources
      include FREDAPI::Client::Release::Tags
      include FREDAPI::Client::Release::RelatedTags

    end
  end
end