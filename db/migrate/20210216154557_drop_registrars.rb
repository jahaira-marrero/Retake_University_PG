class DropRegistrars < ActiveRecord::Migration[6.1]
  def change
    drop_table :registrars
  end
end
