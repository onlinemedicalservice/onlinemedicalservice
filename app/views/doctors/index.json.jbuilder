json.array!(@doctors) do |doctor|
  json.extract! doctor, :name, :dob, :gender, :nationality, :address, :city, :state, :country, :pincode, :mobile_number, :phone_number, :blood_group, :qualification, :email, :user_id, :admin_id, :specialization, :designation
  json.url doctor_url(doctor, format: :json)
end
