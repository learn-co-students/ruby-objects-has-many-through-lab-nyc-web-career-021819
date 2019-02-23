# Genre
#   #name
#     has a name (FAILED - 10)
#   #songs
#     has many songs (FAILED - 11)
#   .all
#     knows about all genre instances (FAILED - 12)
#   #artists
#     has many artists, through songs (FAILED - 13)

class Genre
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        Genre.all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end

end