class CreateJoinTableRoleAdminn < ActiveRecord::Migration[7.0]
  def change
    create_join_table :roles, :adminns do |t|
      # t.index [:role_id, :adminn_id]
      # t.index [:adminn_id, :role_id]
    end
  end
end
