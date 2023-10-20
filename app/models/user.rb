class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories, foreign_key: :author_id, class_name: 'Categories'
  has_many :movements, foreign_key: :author_id, class_name: 'Movement'

  validates :name, presence: true
end
