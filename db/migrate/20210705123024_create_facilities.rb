class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|

      t.integer:user_id
      t.integer:item_id
      t.string:name
      t.string:postalcode
      t.string:address
      t.string:representative
      t.integer:genre, default: 0

      t.timestamps
    end
  end
end
