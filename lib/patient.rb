#Patient
#   #new
#     initializes with a name (FAILED - 23)
#   #new_appointment
#     given a doctor and date, creates a new appointment belonging to that patient (FAILED - 24)
#   .all
#     knows about all patients (FAILED - 25)
#   #appointments
#     has many doctors through appointments (FAILED - 26)
#   #doctors
#     has many doctors through appointments (FAILED - 27)

class Patient
attr_accessor :name
@@all = []

def self.all
    @@all
end

def initialize(name)
    @name = name
    Patient.all << self
end

def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
end

def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
end

def doctors
    self.appointments.map do |appointment|
        appointment.doctor
    end
end

end