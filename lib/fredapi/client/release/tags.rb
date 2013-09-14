module FREDAPI
  class Client
    module Release
      # Tags module for fred/release/tags endpoint
      module Tags

        # Get the sources on a release of economic data
        def release_tags opts={}
          get "fred/release/tags", opts
        end

      end
    end
  end
end