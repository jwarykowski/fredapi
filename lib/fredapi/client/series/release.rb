module FREDAPI
  class Client
    module Series
      # Release module for fred/series/release endpoint
      module Release

        # Get the release for an economic data series
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] series_id The id for a series
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @return [Hashie::Mash] Hash containing the results
        def series_release opts={}
          get "fred/series/release", opts
        end

      end
    end
  end
end