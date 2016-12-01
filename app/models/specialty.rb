class Specialty < ActiveRecord::Base
  has_many :doctor_specialties
  has_many :doctors, through: :doctor_specialties
  has_many :ailment_specialties
  has_many :ailments, through: :ailment_specialties
end
