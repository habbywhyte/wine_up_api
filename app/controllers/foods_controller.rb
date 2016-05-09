class FoodsController < ApplicationController
  def index
    @foods = Food.all.order(:created_at) do
      @wine_types = Winetype.find_all 

    render json: @foods.to_json, status: :ok
  end
  def show
    @food = Food.find(params[:id])
    render json: @food.to_json, status: :ok
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      render json: @food.to_json, status: :created
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      render json: @food.to_json, status: :ok
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    render json: {message: "success"}, status: :ok
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name, :photoUrl)
    end
end

