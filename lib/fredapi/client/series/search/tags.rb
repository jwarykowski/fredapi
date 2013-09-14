module FREDAPI
  class Client
    module Series
      module Search
        # Tags module for fred/series/search/tags endpoint
        module Tags

          # Get the tags for a series search
          #
          # @param opts [Hash] options hash of parameters
          # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
          # @option opts [String] file_type A key or file extension that indicates the type
          # @option opts [Integer] series_search_text The words to match against economic data series
          # @option opts [String] realtime_start The start of the real-time period
          # @option opts [String] realtime_end The end of the real-time period
          # @option opts [String] tag_group_id A tag group id to filter tags by type
          # @option opts [String] tag_names A semicolon delimited list of tags to find related tags for
          # @option opts [String] tag_search_text The words to find matching tags with
          # @option opts [Integer] limit The maximum number of results to return
          # @option opts [Integer] offset Non-negative integer
          # @option opts [String] order_by Order results by values of the specified attribute
          # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
          # @return [Hashie::Mash] Hash containing the results
          def series_search_tags opts={}
            get "fred/series/search/tags", opts
          end

        end
      end
    end
  end
end