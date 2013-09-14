module FREDAPI
  class Client
    module Series
      # Release module for fred/series/release endpoint
      module Release

        # Get the release for an economic data series
        def series_release opts={}
          get "fred/series/release", opts
        end

      end
    end
  end
end