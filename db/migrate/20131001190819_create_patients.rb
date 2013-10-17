class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :f_name
      t.string :dob
      t.string :gender
      t.string :nationality
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.integer :mobile_number
      t.string :phone_number
      t.string :blood_group
      t.string :qualification
      t.string :occupation
      t.string :email
      t.string :user_id

      t.timestamps
    end
  end
end
