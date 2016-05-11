class WineTypesController < ApplicationController
  def index
    # @food = Food.find(params[:food_id])
    @wine_types = Winetype.all.order(:created_at)

    render json: @wine_types.to_json, status: :ok
  end

  def show
    @food = Food.find(params[:food_id])
    @wine_types = Winetype.all.order(:created_at)

    render json: @wine_types.to_json, status: :ok
  end
  def create
    @food = Food.find(params[:food_id])
    @wine_type = @food.wine_types.build(wine_type_params)

    if @wine_type.save
      render json: @wine_type.to_json, status: :created
    else
      render json: @wine_type.errors, status: :unprocessable_entity
    end
  end

  def update
    @wine_type = Wine_Type.find(params[:id])
    if @wine_type.update(wine_type_params)
      render json: @wine_type.to_json, status: :ok
    else
      render json: @wine_type.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @wine_type = Wine_Type.find(params[:id])
    @wine_type.destroy
    render json: {message: "success"}, status: :ok
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def wine_type_params
      params.require(:wine_type).permit(:type, :graphic_url, :food_id)
    end
end


