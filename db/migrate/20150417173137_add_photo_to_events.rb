class AddPhotoToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_photo, :string, array: true
  end
end
