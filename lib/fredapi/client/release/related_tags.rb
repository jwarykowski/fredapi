module FREDAPI
  class Client
    module Release
      # RelatedTags module for fred/release/related_tags endpoint
      module RelatedTags

        # Get the related tags for a release
        def release_related_tags opts={}
          get "fred/release/related_tags", opts
        end

      end
    end
  end
end