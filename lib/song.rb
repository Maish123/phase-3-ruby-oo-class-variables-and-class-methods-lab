require 'pry'

class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        #for the total count of songs
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        #get the music artists array
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally 
    end

    def self.artist_count
        @@artists.tally
    end

end

uzima = Song.new("Uzima", "Ishi", "gospel")
uzima2 = Song.new("Go", "Jonny", "pop")
uzima3 = Song.new("mine", "pipe", "rock")
uzima4 = Song.new("Life", "Ishi", "gospel")
uzima4 = Song.new("uuii", "Ishi", "gospel")
uzima4 = Song.new("mimi", "Ishi", "gospel")
binding.pry