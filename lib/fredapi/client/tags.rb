require 'fredapi/client/tags/series'

module FREDAPI
  class Client
    # Tags module for fred/tags endpoint
    module Tags

      # Get all tags, search for tags, or get tags by name
      def tags opts={}
        get "fred/tags", opts
      end

      include FREDAPI::Client::Tags::Series

    end
  end
end