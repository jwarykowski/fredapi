module FREDAPI
  class Client
    module Series
      module Search
        # RelatedTags module for fred/series/search/related_tags endpoint
        module RelatedTags

          # Get the related tags for a series search
          def series_search_related_tags opts={}
            get "fred/series/search/related_tags", opts
          end

        end
      end
    end
  end
end