class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :categories, foreign_key: :author_id, class_name: 'Categories'
  has_many :movements, foreign_key: :author_id, class_name: 'Movement'

  validates :name, presence: true
end
