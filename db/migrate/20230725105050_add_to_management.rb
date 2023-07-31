class AddToManagement < ActiveRecord::Migration[7.0]
  def change
    add_column :managements, :name, :string
    add_column :managements, :email, :string
    add_column :managements, :contact, :string
    add_column :managements, :meeting_date, :date
    add_column :managements, :start_time, :time
    add_column :managements, :end_time, :time
  end
end
