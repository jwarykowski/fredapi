module FREDAPI
  class Client
    # Sources module for fred/sources endpoint
    module Sources

      # Get all sources of economic data
      def sources opts={}
        get "fred/sources", opts
      end

    end
  end
end