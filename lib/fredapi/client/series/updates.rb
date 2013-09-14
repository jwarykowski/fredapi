module FREDAPI
  class Client
    module Series
      # Updates module for fred/series/updates endpoint
      module Updates

        # Get economic data series sorted by when observations
        # were updated on the FRED® server
        def series_updates opts={}
          get "fred/series/updates", opts
        end

      end
    end
  end
end