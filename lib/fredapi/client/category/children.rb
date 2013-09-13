module FREDAPI
  class Client
    module Category
      # Category module for category/children endpoint
      module Children

        def category_children opts={}
          get "fred/category/children", opts
        end

      end
    end
  end
end