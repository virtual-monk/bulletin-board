class User < ActiveRecord::Base
  has_many :events
  has_many :attends
  has_many :maybe_attends
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
