require_relative "delicious/version"
require_relative "delicious/tag"
require_relative "delicious/bundle"

module Delicious
  # Your code goes here...
  API_URL = "http://feeds.delicious.com"
  API_OAUTH_URL = "http://username:password@feeds.delicious.com/v1/json/tags/bundles/all?"
end