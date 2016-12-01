require 'appointment_scheduler'

class AppointmentsController < ApplicationController
  def create
    patient = Patient.find(params[:appointment][:patient])
    ailment = Ailment.find(params[:appointment][:ailment])
    appointment = AppointmentScheduler.new(patient, ailment).schedule_appointment
    AppointmentConfirmation.confirm_appointment(appointment).deliver

    flash[:message] = "Your appointment was scheduled! You should receive an email shortly."

    redirect_to :back
  end
end
