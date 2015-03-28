class EventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :details, null: false
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.string :address, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
