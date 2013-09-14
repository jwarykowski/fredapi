module FREDAPI
  class Client
    module Category
      # Tags module for fred/category/tags endpoint
      module Tags

        # Get the tags for a category
        def category_tags opts={}
          get "fred/category/tags", opts
        end

      end
    end
  end
end