require 'pry'

class Artist

  attr_accessor :name, :song, :genre
  #attr_accessor :doctor, :date, :name

  @@all = []
  #@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    Song.new(song, genre, self)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
  #def doctors
  #  appointments.map do |appt|
  #    appt.doctor
  #  end
  #end

end
