require "pry"

class Doctor
  @@all =[]

  attr_accessor :name

    def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    # binding.pry
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |details|
      # binding.pry
      details.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      # binding.pry
      appointment.patient
    end
  end

end
