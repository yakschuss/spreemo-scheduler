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

specialty1 = Specialty.create(specialty_name: 'orthopedics')
specialty2 = Specialty.create(specialty_name: 'cardiology')
specialty3 = Specialty.create(specialty_name: 'opthamology')

ailment1 = Ailment.create(ailment_name: 'broken bone')
ailment2 = Ailment.create(ailment_name: 'eye trouble')
ailment3 = Ailment.create(ailment_name: 'heart disease')

20.times do
  DoctorSpecialty.create(doctor_id: rand(1..10), specialty_id: rand(1..3))
  PatientAilment.create(patient_id: rand(1..10), ailment_id: rand(1..3))
end


AilmentSpecialty.create(ailment: ailment1, specialty: specialty1)
AilmentSpecialty.create(ailment: ailment2, specialty: specialty2)
AilmentSpecialty.create(ailment: ailment3, specialty: specialty3)

