class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

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
end
