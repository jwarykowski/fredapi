module FREDAPI
  class Client
    module Category
      # Category module for fred/category/children endpoint
      module Children

        # Get the child categories for a specified parent category
        #
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
        # @option opts [String] file_type A key or file extension that indicates the type of file to send
        # @option opts [Integer] category_id The id for a category
        # @option opts [String] realtime_start The start of the real-time period
        # @option opts [String] realtime_end The end of the real-time period
        # @return [Hashie::Mash] Hash containing the results
        def category_children opts={}
          get "fred/category/children", opts
        end

      end
    end
  end
end