class CategoryMovement < ApplicationRecord
  belongs_to :categories
  belongs_to :movements
end
