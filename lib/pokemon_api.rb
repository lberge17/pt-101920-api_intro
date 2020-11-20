# net/http is built into Ruby (no outside dependencies/gems)
# require 'net/http'
# require 'json'

# HTTParty is a gem, need to 'gem install httparty'
# require 'httparty'

# Rest Client is a gem, need to 'gem install rest-client'
# require 'rest-client'
# require 'json'


# require "dotenv/load"

# faraday - gem install faraday; gem install faraday_middleware

class Pokedex::API
    def initialize
        @url = "https://pokeapi.co/api/v2/pokemon?limit=200"
    end

    def fetch_pokemon_net_http
        uri = URI(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)

        all_pokemon = data["results"]
        all_pokemon.each do |p|
            data = JSON.parse(Net::HTTP.get(URI(p["url"])))
            Pokedex::Pokemon.new(data)
            print "."
        end
    end

    # def fetch_pokemon_httparty
    #     response = HTTParty.get(@url)
    #     response.parsed_response
    #     binding.pry
    # end

    # def fetch_rest_client
    #     response = RestClient.get(@url)
    #     data = JSON.parse(response)
    #     binding.pry
    # end
end

