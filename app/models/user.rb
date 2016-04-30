class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals
  has_many :ingredients
  has_many :categories
end
