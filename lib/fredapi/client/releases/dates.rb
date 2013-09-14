module FREDAPI
  class Client
    module Releases
      # Dates module for fred/releases/dates endpoint
      module Dates

        # Get releases dates for all releases of economic data
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [Integer] limit The maximum number of results to return
        # @option opts [Integer] offset Non-negative integer
        # @option opts [String] order_by Order results by values of the specified attribute
        # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
        # @option opts [Integer] include_release_dates_with_no_data Determines whether release dates with no data available are returned.
        # @return [Hashie::Mash] Hash containing the results
        def releases_dates opts={}
          get "fred/releases/dates", opts
        end

      end
    end
  end
end