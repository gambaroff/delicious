require 'faraday'
require 'json'



module Delicious
	class Bundle
		attr_reader :bundles, :bundle

		def initialize(attributes)
			@bundles  = attributes["bundles"]
			@bundle = attributes["bundle"]
		end


		def self.find
			response  = Faraday.get("#{API_OAUTH_URL}")
			attributes = JSON.parse(response.body)
			new attributes
		end
	end
end