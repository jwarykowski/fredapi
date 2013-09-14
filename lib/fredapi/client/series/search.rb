require 'fredapi/client/series/search/tags'
require 'fredapi/client/series/search/related_tags'

module FREDAPI
  class Client
    module Series
      # Search module for fred/series/search endpoint
      module Search

        # Get economic data series that match keywords
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] series_id The id for a series
        # @option opts [String] search_text The words to match against economic data series
        # @option opts [String] search_type Determines the type of search to perform
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [Integer] limit The maximum number of results to return
        # @option opts [Integer] offset Non-negative integer
        # @option opts [String] order_by Order results by values of the specified attribute
        # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
        # @option opts [String] filter_variable The attribute to filter results by
        # @option opts [String] filter_value The attribute to filter results by
        # @option opts [String] tag_names A semicolon delimited list of tags to find related tags for
        # @return [Hashie::Mash] Hash containing the results
        def series_search opts={}
          get "fred/series/search", opts
        end

        include FREDAPI::Client::Series::Search::Tags
        include FREDAPI::Client::Series::Search::RelatedTags

      end
    end
  end
end