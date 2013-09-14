module FREDAPI
  class Client
    module Release
      # Tags module for fred/release/tags endpoint
      module Tags

        # Get the sources on a release of economic data
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] release_id The id for a release
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [String] tag_group_id A tag group id to filter tags by type
        # @option opts [String] tag_names A semicolon delimited list of tags to find related tags for
        # @option opts [String] search_text The words to find matching tags with
        # @option opts [Integer] limit The maximum number of results to return
        # @option opts [Integer] offset Non-negative integer
        # @option opts [String] order_by Order results by values of the specified attribute
        # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
        # @return [Hashie::Mash] Hash containing the results
        def release_tags opts={}
          get "fred/release/tags", opts
        end

      end
    end
  end
end