module FREDAPI
  class Client
    module Series
      # Observations module for fred/series/observations endpoint
      module Observations

        # Get the observations or data values for an economic data series
        def series_observations opts={}
          get "fred/series/observations", opts
        end

      end
    end
  end
end