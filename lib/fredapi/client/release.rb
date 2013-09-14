require 'fredapi/client/release/dates'
require 'fredapi/client/release/series'
require 'fredapi/client/release/sources'
require 'fredapi/client/release/tags'
require 'fredapi/client/release/related_tags'

module FREDAPI
  class Client
    # Release module for fred/release endpoint
    module Release

      def releases opts={}
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