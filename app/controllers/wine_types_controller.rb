class Wine_Types_Controller < ApplicationController
  def index
    @wine_types = Wine_Type.all.order(:created_at)

    render json: @wine_types.to_json, status: :ok
  end
  def show
    @wine_type = Wine_Type.find(params[:id])
    render json: @wine_type.to_json, status: :ok
  end

  def create
    @wine_type = Wine_Type.new(wine_type_params)

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
      params.require(:wine_type).permit(:type, :graphic)
    end
end

