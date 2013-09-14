module FREDAPI
  class Client
    module Series
      module Search
        # Tags module for fred/series/search/tags endpoint
        module Tags

          # Get the tags for a series search
          def series_search_tags opts={}
            get "fred/series/search/tags", opts
          end

        end
      end
    end
  end
end