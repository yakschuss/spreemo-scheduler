class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :patient_id, index: true
      t.integer :doctor_id, index: true
      t.datetime :appointment_time
    end
  end
end
