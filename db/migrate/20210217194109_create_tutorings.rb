class CreateTutorings < ActiveRecord::Migration[6.1]
  def change
    create_table :tutorings do |t|
      t.belongs_to :instructor, null: false, foreign_key: true
      t.string :week_day
      t.integer :time

      t.timestamps
    end
  end
end
