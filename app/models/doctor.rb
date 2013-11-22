class Doctor < ActiveRecord::Base
  has_many :appointments
  # before_save :create_user

  validates_presence_of :name, :dob, :city , :email, :mobile_number

  def doctor_info_completed
    return if self.blank?
    !self.name.blank? && !self.dob.blank? && !self.city.blank? && !self.mobile_number.blank? && !self.email.blank?
  end

  def create_user
  	User.create(:email => self.email, :user_type => "Doctor", :password => self.mobile_number)
  end	
end
