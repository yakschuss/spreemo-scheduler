class Specialty < ActiveRecord::Base
  has_many :doctor_specialties
end
