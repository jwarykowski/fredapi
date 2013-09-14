module FREDAPI
  class Client
    module Tags
      # Series module for fred/tags/series endpoint
      module Series

        # Get the series matching tags
        def tags_series opts={}
          get "fred/tags/series", opts
        end

      end
    end
  end
end