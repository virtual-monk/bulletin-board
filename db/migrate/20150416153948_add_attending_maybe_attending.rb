class AddAttendingMaybeAttending < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
    end
    create_table :maybe_attends do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
    end
  end
end
