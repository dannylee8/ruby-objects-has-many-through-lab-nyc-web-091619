require 'pry'
class Patient

    attr_reader :name

    # The patient class needs a class variable @@all that begins as an empty array.
    
    @@all = []

    def initialize(name)
        # A patient should be initialized with a name and be saved in the @@all array.
        
        @name = name
        @@all << self
    end

    # The patient class needs a class method .all that lists each patient in the class variable.

    def self.all 
        @@all
    end

    # The patient class needs an instance method, new_appointment, that iterates through all songs and finds the songs that belong to that patient.

    def new_appointment(date, doctor)
        Appointment.new(doctor, self, date)
    end

    # The Patient class needs an instance method, #appointments, that iterates through the Appointments array and returns Appointments that belong to the patient.

    def appointments
        Appointment.all.select {|appt| appt.patient == self }
    end

    # The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
    
    def doctors
        appointments.map do |appt| 
            appt.doctor
        end

    end
    
end # end of patient class