require 'fredapi/client/category/children'
require 'fredapi/client/category/related'
require 'fredapi/client/category/related_tags'
require 'fredapi/client/category/series'
require 'fredapi/client/category/tags'

module FREDAPI
  class Client
    # Category module for fred/category endpoint
    module Category

      # Get a category
      def category opts={}
        get "fred/category", opts
      end

      include FREDAPI::Client::Category::Children
      include FREDAPI::Client::Category::Related
      include FREDAPI::Client::Category::Related_tags
      include FREDAPI::Client::Category::Series
      include FREDAPI::Client::Category::Tags

    end
  end
end