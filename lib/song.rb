require 'pry'

class Song

  attr_accessor :genre, :song, :artist
  #attr_accessor :patient, :doctor, :date

  @@all = []
  #@@all = []

  def initialize(song, genre, artist)
    @song = song
    @genre = genre
    @artist = artist
    @@all << self
  end
  #def initialize(patient, doctor, date)
  #  @patient = patient
  #  @doctor = doctor
  #  @date = date
  #  @@all << self
  #end

  def self.all
    @@all
  end
  #def self.all
  #  @@all
  #end

  def genre

  end


end
