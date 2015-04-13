class ChangeDataTypesEventsTimeDate < ActiveRecord::Migration
  def change
    remove_column :events, :date, :string, null: false
    remove_column :events, :start_time, :string, null: false
    remove_column :events, :end_time, :string, null: false
    add_column :events, :date, :date, null: false
    add_column :events, :start_time, :time, null: false
    add_column :events, :end_time, :time, null: false
  end
end
