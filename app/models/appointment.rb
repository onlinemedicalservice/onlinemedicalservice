class Appointment < ActiveRecord::Base

  # Associations
  belongs_to :patient
  belongs_to :doctor
end
