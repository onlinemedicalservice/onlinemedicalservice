class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  #Associations
  has_one :patient
  has_one :doctor

  # before_save :set_user_type, :on => create
  # after_save :patient_create, :on => create

  # def set_user_type
  #   self.user_type = "Patient" if self.user_type.blank?
  # end

  def patient_create
    Patient.create(:user_id => self.id) if self.user_type == "Patient"
  end

  def self.find_for_oauth(oauth_raw_data, oauth_user_data, signed_in_resource=nil )
    return User.where("(provider = '#{oauth_raw_data.provider}' AND uid = '#{oauth_raw_data.uid}') OR email='#{oauth_user_data.email}'").first || User.create!(name:oauth_user_data.name,
                            provider:oauth_raw_data.provider,
                            uid:oauth_raw_data.uid,
                            email:oauth_user_data.email,
                            password:Devise.friendly_token[0,20],
                          )
  end

end
