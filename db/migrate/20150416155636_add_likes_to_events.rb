class AddLikesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :likes_count, :integer, default: 0
  end
end
