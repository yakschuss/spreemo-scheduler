class Ailment < ActiveRecord::Base
  has_many :patient_ailments
  has_many :patients, through: :patient_ailments
end
