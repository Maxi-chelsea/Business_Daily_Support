class CreateCampanyPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :campany_posts do |t|
      t.integer :campany_id
      t.integer :user_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
