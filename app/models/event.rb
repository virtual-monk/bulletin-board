class Event < ActiveRecord::Base
  mount_uploader :event_photo, EventPhotoUploader
  belongs_to :user
  belongs_to :category
  has_many :attends
  has_many :maybe_attends

  geocoded_by :full_street_address

  validates :title, presence: true
  validates :details, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  after_validation :geocode, if: :address_changed?

  def owner_or_admin?(logged_in_user)
    user == logged_in_user || logged_in_user.admin
  end

  def full_street_address
    "#{address}#{city}#{state}"
  end

  def attend_terminator(user)
    if attends.find_by(user_id: user)
      attends.find_by(user_id: user).destroy
    elsif maybe_attends.find_by(user_id: user)
      maybe_attends.find_by(user_id: user).destroy
    end
  end
end
