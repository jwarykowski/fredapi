require 'fredapi/client/series/categories'
require 'fredapi/client/series/observations'
require 'fredapi/client/series/release'
require 'fredapi/client/series/search'
require 'fredapi/client/series/tags'
require 'fredapi/client/series/updates'
require 'fredapi/client/series/vintage_dates'

module FREDAPI
  class Client
    # Series module for fred/series endpoint
    module Series

      # Get an economic data series
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
      # @option opts [String] file_type A key or file extension that indicates the type of file to send
      # @option opts [Integer] series_id The id for a series
      # @option opts [String] realtime_start The start of the real-time period
      # @option opts [String] realtime_end The end of the real-time period
      # @return [Hashie::Mash] Hash containing the results
      def series opts={}
        get "fred/series", opts
      end

      include FREDAPI::Client::Series::Categories
      include FREDAPI::Client::Series::Observations
      include FREDAPI::Client::Series::Release
      include FREDAPI::Client::Series::Search
      include FREDAPI::Client::Series::Tags
      include FREDAPI::Client::Series::Updates
      include FREDAPI::Client::Series::VintageDates

    end
  end
end