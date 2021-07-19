class CreateCampanyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :campany_users do |t|
      t.references :campany, foreign_key: true
      t.references :user, foreign_key: true
      
      
      t.timestamps
    end
  end
end
