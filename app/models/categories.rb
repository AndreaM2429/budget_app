class Categories < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :category_movements, foreign_key: :category_id

  has_one_attached :icon

  validates :name, presence: true
  validates :icon, presence: true
end
