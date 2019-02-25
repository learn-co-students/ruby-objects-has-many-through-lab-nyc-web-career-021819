class Artist
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    self.songs.last
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    genres_of_artist = []
    Song.all.each do |song|
      if song.artist == self
        genres_of_artist << song.genre
      end
    end
    genres_of_artist
  end

end
