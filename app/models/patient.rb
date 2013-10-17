class Patient < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :name,:f_name,

  def patient_info_completed
    return if self.blank?
    !self.name.blank? && !self.dob.blank? && !self.city.blank? && !self.mobile_number.blank?
  end
end
