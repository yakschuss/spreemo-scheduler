class Ailment < ActiveRecord::Base
  has_many :patient_ailments
  has_many :patients, through: :patient_ailments
  has_many :ailment_specialties
  has_many :specialties, through: :ailment_specialties
end
