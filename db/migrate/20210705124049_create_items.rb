class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.integer:user_id
      t.integer:facility_id
      t.string:title
      t.boolean:genre, default: false
      t.integer:status, default: 0
      t.text:content

      t.timestamps
    end
  end
end
