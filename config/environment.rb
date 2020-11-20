# require gems such as httparty or rest-client here rather than in API class file
require "dotenv/load"
require "net/http"
require "json"
require "pry"

# require my classes/modules
require_relative "../lib/modules/pokedex"
require_relative "../lib/cli"
require_relative "../lib/pokemon"
require_relative "../lib/pokemon_api"
