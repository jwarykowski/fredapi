module FREDAPI
  class Client
    module Source
    # Releases module for fred/source/releases endpoint
      module Releases

        # Get the releases for a source
        def source_releases opts={}
          get "fred/source/releases", opts
        end

      end
    end
  end
end