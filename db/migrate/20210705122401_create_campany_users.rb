class CreateCampanyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :campany_users do |t|
      t.integer :campany_id
      t.integer :user_id

      t.timestamps
    end
  end
end
