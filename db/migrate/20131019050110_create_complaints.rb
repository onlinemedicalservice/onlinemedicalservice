class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.integer :patient_id
      t.integer :kiosk_id
      t.integer :doctor_id
      t.string :subject
      t.string :description

      t.timestamps
    end
  end
end
