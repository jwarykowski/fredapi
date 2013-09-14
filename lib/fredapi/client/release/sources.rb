module FREDAPI
  class Client
    module Release
      # Sources module for fred/release/sources endpoint
      module Sources

        # Get the sources on a release of economic data
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] release_id The id for a release
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @return [Hashie::Mash] Hash containing the results
        def release_sources opts={}
          get "fred/release/sources", opts
        end

      end
    end
  end
end