class Categories < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many: :category_movements
end
