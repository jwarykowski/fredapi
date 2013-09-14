require 'fredapi/client/source/releases'

module FREDAPI
  class Client
    # Source module for fred/source endpoint
    module Source

      # Get a source of economic data
      def source opts={}
        get "fred/source", opts
      end

      include FREDAPI::Client::Source::Releases

    end
  end
end