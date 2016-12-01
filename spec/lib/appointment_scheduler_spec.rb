require 'rails_helper'
require 'appointment_scheduler'

RSpec.describe AppointmentScheduler do

  describe "#schedule_appointment" do
    it "creates a new appointment" do
      doctor = FactoryGirl.create(:doctor)
      patient = FactoryGirl.create(:patient)

      specialty = double(Specialty)
      allow(specialty).to receive(:doctors).and_return([doctor])
      ailment = double(Ailment)
      allow(ailment).to receive(:specialties).and_return([specialty])
      # ailment_specialty = double(AilmentSpecialty, ailment: ailment, specialty: specialty)
      # doctor_specialty = double(DoctorSpecialty, doctor: doctor, specialty: specialty)
      # patient_ailment = double(PatientAilment, patient: patient, ailment: ailment)

      scheduler = AppointmentScheduler.new(patient, ailment)

      expect{scheduler.schedule_appointment}.to change(Appointment, :count).by(1)
    end
  end

end
