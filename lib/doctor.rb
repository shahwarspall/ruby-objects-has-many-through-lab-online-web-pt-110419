require "pry"
class Doctor 

    @@all=[]

    attr_accessor :Doctor , :name

    def initialize(name)
        @name = name 
        @@all << self 

    end 

    def self.all 
        @@all
    end 

    def appointments 
        Appointment.all.select do |appt|
        appt.doctor == self 

        end 

    end 

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
      
    end 

    def patients


        appointments.map do |appointment|
            appointment.patient
        end 


    end 
        

end 
