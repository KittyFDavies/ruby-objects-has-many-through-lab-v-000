require 'pry'

class Artist

  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    binding.pry
    songs.select do |song|
      song.genre
    end
  end

  def new_song(song, genre)
    Song.new(song, genre, self)
  end

end
