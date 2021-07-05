class Genre
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    artists_with_genre = []
    Song.all.each do |song|
      if song.genre == self
        artists_with_genre << song.artist
      end
    end
    artists_with_genre
  end
end
