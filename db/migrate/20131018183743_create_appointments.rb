class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.integer :kiosk_id
      t.datetime :appointment_date
      t.datetime :allotment_date
      t.text :description

      t.timestamps
    end
  end
end
