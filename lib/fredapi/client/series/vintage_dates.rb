module FREDAPI
  class Client
    module Series
      # VintageDates module for fred/series/vintagedates endpoint
      module VintageDates

        # Get the dates in history when a series' data values
        # were revised or new data values were released
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] series_id The id for a series
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [Integer] limit The maximum number of results to return
        # @option opts [Integer] offset Non-negative integer
        # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
        # @return [Hashie::Mash] Hash containing the results
        def series_vintage_dates opts={}
          get "fred/series/vintagedates", opts
        end

      end
    end
  end
end