module FREDAPI
  class Client
    module Releases
      # Dates module for fred/releases/dates endpoint
      module Dates

        # Get releases dates for all releases of economic data
        def releases_dates opts={}
          get "fred/releases/dates", opts
        end

      end
    end
  end
end