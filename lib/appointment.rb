class Appointment
    
    @@all = []

    attr_accessor :date, :patient, :doctor

    def initialize(date, patient, doctor)
        @patient = patient
        @doctor = doctor
        @date = date
        @@all.push(self)
    end

    def self.all 
        @@all
    end
end


doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
