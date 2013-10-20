class Doctor < ActiveRecord::Base

  # Associations
  has_many :appointments
end
