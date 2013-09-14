module FREDAPI
  class Client
    module Category
      # RelatedTags module for fred/category/related_tags endpoint
      module RelatedTags

        # Get the related tags for a category
        def category_related_tags opts={}
          get "fred/category/related_tags", opts
        end

      end
    end
  end
end