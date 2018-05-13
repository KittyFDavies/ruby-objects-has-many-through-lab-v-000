require 'pry'

class Song

  attr_accessor :genre, :song, :artist

  @@all = []

  def initialize(song, genre, artist)
    @song = song
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def genre
    #binding.pry
    Genre.name == self.genre
  end

end
