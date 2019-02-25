class Patient

  attr_accessor :patient

  @@all = []

  def initialize(patient)
    @patient = patient
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self}
  end

  def doctors
    appointments.map { |appt| appt.doctor }
  end


end
