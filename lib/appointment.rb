class Appointment
    @@all = []
    attr_reader :date, :patient, :doctor
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
    
end