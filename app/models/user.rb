class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Associations
  has_one :patient

  before_save :set_user_type, :on => create
  after_save :patient_create, :on => create

  def set_user_type
    self.user_type = "Patient" if self.user_type.blank?
  end

  def patient_create
    Patient.create(:user_id => self.id) if self.user_type == "Patient"
  end

end
