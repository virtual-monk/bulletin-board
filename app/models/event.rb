class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :title, presence: true
  validates :details, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  def owner_or_admin?(logged_in_user)
    user == logged_in_user || logged_in_user.admin
  end
end
