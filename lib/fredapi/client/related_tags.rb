module FREDAPI
  class Client
    # RelatedTags module for fred/related_tags endpoint
    module RelatedTags

      # Get the related tags for one or more tags
      def related_tags opts={}
        get "fred/related_tags", opts
      end

    end
  end
end