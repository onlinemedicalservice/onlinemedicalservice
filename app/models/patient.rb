class Patient < ActiveRecord::Base

  has_many :appointments
  belongs_to :user
  has_many :feedbacks
  has_many :complaints
  #attr_accessible :name,:f_name,
  
  def patient_info_completed
    return if self.blank?
    !self.name.blank? && !self.dob.blank? && !self.city.blank? && !self.mobile_number.blank?
  end
end
