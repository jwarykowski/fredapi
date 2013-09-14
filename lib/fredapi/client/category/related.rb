module FREDAPI
  class Client
    module Category
      # Related module for fred/category/related endpoint
      module Related

        # Get the related categories for a category
        def category_related opts={}
          get "fred/category/related", opts
        end

      end
    end
  end
end