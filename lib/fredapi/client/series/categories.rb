module FREDAPI
  class Client
    module Series
      # Categories module for fred/series/categories endpoint
      module Categories

        # Get the categories for an economic data series
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] series_id The id for a series
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @return [Hashie::Mash] Hash containing the results
        def series_categories opts={}
          get "fred/series/categories", opts
        end

      end
    end
  end
end