json.array!(@appointments) do |appointment|
  json.extract! appointment, :patient_id, :doctor_id, :kiosk_id, :appointment_date, :allotment_date, :description
  json.url appointment_url(appointment, format: :json)
end
