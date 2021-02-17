class DropOfficeHours < ActiveRecord::Migration[6.1]
  def change
    drop_table :office_hours
  end
end
