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
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
      # @option opts [String] file_type A key or file extension that indicates the type of file to send
      # @option opts [Integer] category_id The id for a category
      # @return [Hashie::Mash] Hash containing the results
      def category opts={}
        get "fred/category", opts
      end

      include FREDAPI::Client::Category::Children
      include FREDAPI::Client::Category::Related
      include FREDAPI::Client::Category::RelatedTags
      include FREDAPI::Client::Category::Series
      include FREDAPI::Client::Category::Tags

    end
  end
end