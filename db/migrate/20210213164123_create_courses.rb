class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :seat_limit
      t.string :week_day
      t.integer :time
      t.belongs_to :instructor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
