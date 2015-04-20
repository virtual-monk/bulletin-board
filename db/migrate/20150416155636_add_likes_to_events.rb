class AddLikesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :attends_count, :integer, default: 0
    add_column :events, :maybe_attends_count, :integer, default: 0
  end
end
