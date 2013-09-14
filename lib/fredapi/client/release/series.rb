module FREDAPI
  class Client
    module Release
      # RelatedTags module for fred/release/series endpoint
      module Series

        # Get the series on a release of economic data
        def release_series opts={}
          get "fred/release/series", opts
        end

      end
    end
  end
end