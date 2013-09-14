module FREDAPI
  class Client
    module Series
      # Categories module for fred/series/categories endpoint
      module Categories

        # Get the categories for an economic data series
        def series_categories opts={}
          get "fred/series/categories", opts
        end

      end
    end
  end
end