class Song
    @@all = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all.push(self)
    end

    def self.all
        @@all
    end
end


# KDA = Artist.new_song("Popstars", "Kpop")
# IU = Artist.new_song("23", "Kpop")
# Avicii = Artist.new_song("Levels", "EDM")
# Beethoven = Artist.new_song("symphony", "classical")