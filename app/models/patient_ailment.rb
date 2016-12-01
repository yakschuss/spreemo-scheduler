class PatientAilment < ActiveRecord::Base
  belongs_to :ailment
  belongs_to :patient
end
