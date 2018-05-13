require 'pry'

class Artist

  attr_accessor :name, :genre, :song
  #attr_accessor :doctor, :date, :name

  @@all = []
  #@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  #def initialize(name)
  #  @name = name
  #  @@all << self
  #end

  def self.all
    @@all
  end
  #def self.all
  #  @@all
  #end

  def new_song(song, genre)
    Song.new(song, genre, self)
  end
  #def new_appointment(doctor, date)
  #  Appointment.new(self, doctor, date)
  #end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  #def appointments
  #  Appointment.all.select do |appt|
  #    appt.patient == self
  #  end
  #end

  def genres
    songs.map {|song| song.genre}
  end
  #def doctors
  #  appointments.map do |appt|
  #    appt.doctor
  #  end
  #end

end
