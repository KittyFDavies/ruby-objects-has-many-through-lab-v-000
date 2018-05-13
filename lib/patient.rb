require 'pry'

class Patient
  attr_accessor :doctor, :date, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)

  end

  def doctors
    all.map do |appt|
      appt.doctor
    end

  end

  
end
