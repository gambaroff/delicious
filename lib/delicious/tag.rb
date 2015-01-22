require 'faraday'
require 'json'

module Delicious
	class Tag
		attr_reader :tag

		def initialize(tag)
			@tag = tag
		end

		def self.find(tag)
			response  = Faraday.get("#{API_URL}/v2/json/tag/#{tag}")
			attributes = JSON.parse(response.body)
			new tag
		end
	end
end
