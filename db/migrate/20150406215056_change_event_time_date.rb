class ChangeEventTimeDate < ActiveRecord::Migration
  def change
    remove_column :events, :date, :string
    add_column :events, :date, :string, null: false
    remove_column :events, :time, :string
    add_column :events, :start_time, :string, null: false
    add_column :events, :end_time, :string, null: false
  end
end
