module FREDAPI
  class Client
    module Category
      # Category module for fred/category/children endpoint
      module Children

        # Get the child categories for a specified parent category
        def category_children opts={}
          get "fred/category/children", opts
        end

      end
    end
  end
end