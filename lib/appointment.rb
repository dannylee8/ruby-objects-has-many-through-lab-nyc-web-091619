class Appointment

    attr_reader :patient, :doctor, :date

    # The Appointment class needs a class variable @@all that begins as an empty array.
    
    @@all = []

    def initialize(date, patient, doctor)
        # An Appointment should be initialized with a date (as a string, like "Monday, August 1st"), a patient, and a doctor. The Appointment should be saved in the @@all array.
        @patient = patient
        @doctor = doctor
        @date = date
        @@all << self
    end

    # The Appointment class needs a class method .all that lists each Appointment in the class variable.

    def self.all 
        @@all
    end



end # end of Appointment class