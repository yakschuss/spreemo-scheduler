class AilmentSpecialty < ActiveRecord::Base
  belongs_to :ailment
  belongs_to :specialty
end
