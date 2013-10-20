class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :dob
      t.string :gender
      t.string :nationality
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.string :mobile_number
      t.string :phone_number
      t.string :blood_group
      t.string :qualification
      t.string :email
      t.string :user_id
      t.integer :admin_id
      t.string :specialization
      t.string :designation

      t.timestamps
    end
  end
end
