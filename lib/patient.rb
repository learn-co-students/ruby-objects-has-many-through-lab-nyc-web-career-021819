require "pry"

class Patient

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|app|app.patient == self}
  end

  def doctors
    self.appointments.map{|app|app.doctor}
  end

end
