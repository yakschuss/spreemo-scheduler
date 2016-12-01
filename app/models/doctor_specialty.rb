class DoctorSpecialty < ActiveRecord::Base
  belongs_to :specialty
  belongs_to :doctor
end
