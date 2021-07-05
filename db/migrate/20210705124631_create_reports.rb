class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|

      t.integer:user_id
      t.integer:facility_id
      t.date:visited_date
      t.datetime:visited_at
      t.string:Interviewer
      t.text:content

      t.timestamps
    end
  end
end
