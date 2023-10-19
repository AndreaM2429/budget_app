class CategoryMovement < ApplicationRecord
  belongs_to :categories, class_name: 'Categories', foreign_key: :category_id
  belongs_to :movements, class_name: 'Movement', foreign_key: :movements_id
end
