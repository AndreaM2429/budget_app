class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = current_user.categories.includes(icon_attachment: :blob)

    @category_totals = calc_total_amount(@categories)
  end

  def new
    @category = Categories.new
  end

  def create
    category = current_user.categories.new(category_params)
    if category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:categories).permit(:name, :icon)
  end

  def calc_total_amount(categories)
    totals = {}
    categories.each do |category|
      total_amount = category.category_movements.includes(:movements).sum { |movement| movement.movements.amount }
      totals[category.name] = total_amount
    end
    totals
  end
end
