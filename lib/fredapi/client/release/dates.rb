module FREDAPI
  class Client
    module Release
      # Dates module for fred/release/dates endpoint
      module Dates

        # Get release dates for all releases of economic data
        def release_dates opts={}
          get "fred/release/dates", opts
        end

      end
    end
  end
end