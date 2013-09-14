module FREDAPI
  class Client
    module Series
      # Observations module for fred/series/observations endpoint
      module Observations

        # Get the observations or data values for an economic data series
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
        # @option opts [String] observation_start The start of the observation period
        # @option opts [String] observation_end The end of the observation period
        # @option opts [String] units A key that indicates a data value transformation
        # @option opts [String] frequency An optional parameter that indicates a lower frequency to aggregate values to.
        # @option opts [String] aggregation_method A key that indicates the aggregation method used for frequency aggregation
        # @option opts [Integer] output_type An integer that indicates an output type
        # @option opts [String] vintage_dates A comma separated string of YYYY-MM-DD formatted dates in history
        # @return [Hashie::Mash] Hash containing the results
        def series_observations opts={}
          get "fred/series/observations", opts
        end

      end
    end
  end
end