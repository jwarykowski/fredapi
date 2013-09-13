require 'fredapi/client/category/children'

module FREDAPI
  class Client
    # Category module for category endpoint
    module Category

      def category opts={}
        get "fred/category", opts
      end

      include FREDAPI::Client::Category::Children

    end
  end
end