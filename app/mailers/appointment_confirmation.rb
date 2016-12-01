class AppointmentConfirmation < ApplicationMailer

  DAYS_OF_WEEK = {1 => "Mon", 2 => "Tues", 3 => "Wed", 4 => "Thurs", 5 => "Fri" }
  MONTHS_OF_YEAR = {1 => "Jan", 2 => "Feb", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "Sept", 10 => "Oct", 11 => "Nov", 12 => "Dec"  }

  def confirm_appointment(appointment)
    @patient = appointment.patient
    @doctor   = appointment.doctor
    @appointment = appointment
    @appointment_day = DAYS_OF_WEEK[@appointment.appointment_time.wday]
    @appointment_month = MONTHS_OF_YEAR[@appointment.appointment_time.month]
    @appointment_time = @appointment.appointment_time


    mail(
      to:       @patient.email,
      subject:  "Your Appointment is scheduled!"
    )
  end
end
