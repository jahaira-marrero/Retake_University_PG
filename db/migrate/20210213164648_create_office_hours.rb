class CreateOfficeHours < ActiveRecord::Migration[6.1]
  def change
    create_table :office_hours do |t|
      t.integer :time
      t.string :week_day
      t.belongs_to :instructor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
