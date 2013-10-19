class Patient < ActiveRecord::Base

  has_one :appointment
  belongs_to :user
  has_many :feedbacks
  #attr_accessible :name,:f_name,
  
  def patient_info_completed
    return if self.blank?
    !self.name.blank? && !self.dob.blank? && !self.city.blank? && !self.mobile_number.blank?
  end
end
