require 'fredapi/client/series/search/tags'
require 'fredapi/client/series/search/related_tags'

module FREDAPI
  class Client
    module Series
      # Search module for fred/series/search endpoint
      module Search

        # Get economic data series that match keywords
        def series_search opts={}
          get "fred/series/search", opts
        end

        include FREDAPI::Client::Series::Search::Tags
        include FREDAPI::Client::Series::Search::RelatedTags

      end
    end
  end
end