class MovementsController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Categories.find(params[:category_id])
    @movements = CategoryMovement.where(category_id: params[:category_id]).includes(:movements).order(created_at: :desc)
  end

  def new
    @categories = Categories.all
    @movement = Movement.new
  end

  def create
    name = params[:movement][:name]
    amount = params[:movement][:amount]
    category = Categories.find(params[:movement][:category])
    @movement = Movement.new(author_id: current_user.id, name:, amount:)

    if @movement.save
      CategoryMovement.create(category_id: category.id, movements_id: @movement.id)

      redirect_to category_movements_path(category.id)
    else
      redirect_to new_category_movement_path(params[:category_id])
    end
  end

  private

  def movement_params
    params.require(:movement).permit(:name, :amount, :category)
  end
end
