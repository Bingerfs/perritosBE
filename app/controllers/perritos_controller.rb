class PerritosController < ApplicationController
  before_action :set_perrito, only: [:show, :update, :destroy]

  # GET /perritos
  def index
    @perritos = Perrito.all

    render json: @perritos
  end

  # GET /perritos/1
  def show
    render json: @perrito
  end

  # POST /perritos
  def create
    @perrito = Perrito.new(perrito_params)

    if @perrito.save
      render json: @perrito, status: :created, location: @perrito
    else
      render json: @perrito.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /perritos/1
  def update
    if @perrito.update(perrito_params)
      render json: @perrito
    else
      render json: @perrito.errors, status: :unprocessable_entity
    end
  end

  # DELETE /perritos/1
  def destroy
    @perrito.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perrito
      @perrito = Perrito.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def perrito_params
      params.require(:perrito).permit(:nombre, :edad, :descripcion, :raza, :color)
    end
end
