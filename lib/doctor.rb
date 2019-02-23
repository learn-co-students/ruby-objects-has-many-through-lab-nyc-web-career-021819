# Doctor
#   #name
#     has a name (FAILED - 14)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 15)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 16)
#   #appointments
#     has many appointments (FAILED - 17)
#   #patients
#     has many patients, through appointments (FAILED - 18)

class Doctor
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def new_appointment(patient, date)
        new_appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self }
    end

    def patients
        self.appointments.map do |appointment|
            appointment.patient
        end
    end

end