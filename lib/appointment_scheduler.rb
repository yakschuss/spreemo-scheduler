class AppointmentScheduler
  def initialize(patient, ailment)
    @patient = patient
    @ailment = ailment
  end

  def schedule_appointment
    #use ailment to get corresponding specialty
    #grab doctor that has that specialty
    #check that no appointment exists for this doctor, if does, get next one
    #create appointment with doctor and patient 3 days from now
    doctor = set_doctor
    appointment_time = set_appointment_time

    #this will create the time at the time of scheduling - needs fixing

    Appointment.create!(appointment_time: appointment_time, doctor: doctor, patient: patient)
  end

  private

  def set_doctor
    specialty = ailment.specialties.first
    return specialty.doctors.sample
  end

  def set_appointment_time
    if 3.days.from_now.saturday? || 3.days.from_now.sunday?
      return 5.days.from_now
    else
      return 3.days.from_now
    end
  end

  attr_accessor :patient, :ailment
end
