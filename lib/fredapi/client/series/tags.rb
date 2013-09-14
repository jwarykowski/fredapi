module FREDAPI
  class Client
    module Series
      # Tags module for fred/series/tags endpoint
      module Tags

        # Get the tags for an economic data series
        def series_tags opts={}
          get "fred/series/tags", opts
        end

      end
    end
  end
end