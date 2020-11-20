class Pokedex::Pokemon
    attr_accessor :abilities, :base_experience, :forms, :game_indices, :height, :held_items, :id, :is_default, :location_area_encounters, :moves, :name, :order, :species, :sprites, :stats, :types, :weight
    ALL = []

    def initialize(data)
        data.each {|k,v| self.send("#{k}=", v)}

        ALL << self
    end

    def self.all
        ALL
    end
end