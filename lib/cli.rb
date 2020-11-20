class Pokedex::CLI
    def run
        greeting
        load_pokedex
        menu
    end

    def greeting
        puts "Welcome to your pokedex! Please wait as I fetch all the pokemon."
    end

    def load_pokedex
        Pokedex::API.new.fetch_pokemon_net_http
    end

    def menu
        puts "\nWhat would you like to do?"
        input = gets.chomp
        until input == "exit"
            input = gets.chomp
        end
    end
end