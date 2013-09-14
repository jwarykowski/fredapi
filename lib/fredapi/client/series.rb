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