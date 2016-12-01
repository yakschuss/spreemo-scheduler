class Doctor < ActiveRecord::Base
  include PersonConcern

  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties

  def name
    "Dr. #{super}"
  end
end
