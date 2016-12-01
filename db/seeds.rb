# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  FactoryGirl.create :doctor
end

10.times do
  FactoryGirl.create :patient
end

Specialty.create(specialty_name: 'orthopedics')
Specialty.create(specialty_name: 'cardiology')
Specialty.create(specialty_name: 'opthamology')

Ailment.create(ailment_name: 'broken bone')
Ailment.create(ailment_name: 'eye trouble')
Ailment.create(ailment_name: 'heart disease')

20.times do
  DoctorSpecialty.create(doctor_id: rand(1..10), specialty_id: rand(1..3))
  PatientAilment.create(patient_id: rand(1..10), ailment_id: rand(1..3))
end
