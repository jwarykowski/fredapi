module FREDAPI
  class Client
    module Category
      # Series module for fred/category/series endpoint
      module Series

        # Get the series in a category
        def category_series opts={}
          get "fred/category/series", opts
        end

      end
    end
  end
end