class WineTypesController < ApplicationController
  def index
    # @food = Food.find(params[:food_id])
    @winetypes = Winetype.all.order(:created_at)

    render json: @winetypes.to_json, status: :ok
  end

  def show
    @food = Food.find(params[:food_id])
    @winetypes = Winetype.all.order(:created_at)

    render json: @winetypes.to_json, status: :ok
  end
  def create
    @food = Food.find(params[:food_id])
    @winetype = @food.winetypes.build(wine_type_params)

    if @wine_type.save
      render json: @winetype.to_json, status: :created
    else
      render json: @winetype.errors, status: :unprocessable_entity
    end
  end

  def update
    @winetype = Wine_Type.find(params[:id])
    if @winetype.update(wine_type_params)
      render json: @winetype.to_json, status: :ok
    else
      render json: @winetype.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @winetype = Wine_Type.find(params[:id])
    @winetype.destroy
    render json: {message: "success"}, status: :ok
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def wine_type_params
      params.require(:wine_type).permit(:type, :graphic_url, :food_id)
    end
end


