require "pry"

# net/http is built into Ruby (no outside dependencies/gems)
# require 'net/http'
# require 'json'

# HTTParty is a gem, need to 'gem install httparty'
# require 'httparty'

# Rest Client is a gem, need to 'gem install rest-client'
require 'rest-client'
require 'json'

# faraday - gem install faraday; gem install faraday_middleware

class PokemonAPI
    def initialize
        @url = "https://pokeapi.co/api/v2/pokemon"
    end

    # def fetch_pokemon_net_http
    #     uri = URI(@url + '?limit=200')
    #     response = Net::HTTP.get(uri)
    #     data = JSON.parse(response)

    #     all_pokemon = data["results"]

    #     all_pokemon.each do |p|
    #         Pokemon.new(second_fetch(p["url"]))
    #     end
    # end

    # def fetch_pokemon_httparty
    #     response = HTTParty.get(@url)
    #     response.parsed_response
    #     binding.pry
    # end

    def fetch_rest_client
        response = RestClient.get(@url)
        data = JSON.parse(response)
        binding.pry
    end
end

PokemonAPI.new.fetch_rest_client