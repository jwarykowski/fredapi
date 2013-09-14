module FREDAPI
  class Client
    module Category
      # Series module for fred/category/series endpoint
      module Series

        # Get the series in a category
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] category_id The id for a category
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @option opts [Integer] limit The maximum number of results to return
        # @option opts [Integer] offset Non-negative integer
        # @option opts [String] order_by Order results by values of the specified attribute
        # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
        # @option opts [String] filter_variable The attribute to filter results by
        # @option opts [String] filter_value The attribute to filter results by
        # @option opts [String] tag_names A semicolon delimited list of tags to find related tags for
        # @return [Hashie::Mash] Hash containing the results
        def category_series opts={}
          get "fred/category/series", opts
        end

      end
    end
  end
end