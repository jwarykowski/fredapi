require 'fredapi/client/releases/dates'

module FREDAPI
  class Client
    # Releases module for fred/releases endpoint
    module Releases

      def releases opts={}
        get "fred/releases", opts
      end

      include FREDAPI::Client::Releases::Dates

    end
  end
end