module FREDAPI
  class Client
    module Series
      # Updates module for fred/series/updates endpoint
      module Updates

        # Get economic data series sorted by when observations
        # were updated on the FRED® server
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [Integer] limit The maximum number of results to return
        # @option opts [Integer] offset Non-negative integer
        # @option opts [String] filter_value The attribute to filter results by
        # @return [Hashie::Mash] Hash containing the results
        def series_updates opts={}
          get "fred/series/updates", opts
        end

      end
    end
  end
end