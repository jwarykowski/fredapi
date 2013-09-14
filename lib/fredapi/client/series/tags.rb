module FREDAPI
  class Client
    module Series
      # Tags module for fred/series/tags endpoint
      module Tags

        # Get the tags for an economic data series
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] series_id The id for a series
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [String] order_by Order results by values of the specified attribute
        # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
        # @return [Hashie::Mash] Hash containing the results
        def series_tags opts={}
          get "fred/series/tags", opts
        end

      end
    end
  end
end