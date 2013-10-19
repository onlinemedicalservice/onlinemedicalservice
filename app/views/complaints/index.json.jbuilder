json.array!(@complaints) do |complaint|
  json.extract! complaint, :patient_id, :kiosk_id, :doctor_id, :subject, :description
  json.url complaint_url(complaint, format: :json)
end
