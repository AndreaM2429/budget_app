class Movement < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :category_movements

  validates :name, presence: true
  validates :amount, numericality: { grater_than: 0 }
end
