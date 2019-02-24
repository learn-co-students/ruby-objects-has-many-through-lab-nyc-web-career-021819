require "pry"

class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    # binding.pry
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |name|
      # binding.pry
      name.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      # binding.pry
      appointment.doctor
    end
  end

end
