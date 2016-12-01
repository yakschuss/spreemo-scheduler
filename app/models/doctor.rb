class Doctor < ActiveRecord::Base
  include PersonConcern

  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
  has_many :appointments
  has_many :patients, through: :appointments

  def name
    "Dr. #{super}"
  end
end
