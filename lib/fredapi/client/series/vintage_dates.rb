module FREDAPI
  class Client
    module Series
      # VintageDates module for fred/series/vintagedates endpoint
      module VintageDates

        # Get the dates in history when a series' data values
        # were revised or new data values were released
        def series_vintage_dates opts={}
          get "fred/series/vintagedates", opts
        end

      end
    end
  end
end