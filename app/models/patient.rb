class Patient < ActiveRecord::Base
  include PersonConcern
  has_many :patient_ailments
  has_many :ailments, through: :patient_ailments
  has_many :appointments
  has_many :doctors, through: :appointments
end
