module FREDAPI
  class Client
    module Release
      # Sources module for fred/release/sources endpoint
      module Source

        # Get the sources on a release of economic data
        def release_sources opts={}
          get "fred/releases/sources", opts
        end

      end
    end
  end
end