class ChangeCloumn < ActiveRecord::Migration
  def change
  	change_column :patients, :mobile_number, :string
  	add_column :appointments, :status, :string
  	add_column :complaints, :status, :string
  end
end
