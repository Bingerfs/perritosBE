class GatitosController < ApplicationController
  before_action :set_gatito, only: [:show, :update, :destroy]

  # GET /gatitos
  def index
    @gatitos = Gatito.all

    render json: @gatitos
  end

  # GET /gatitos/1
  def show
    render json: @gatito
  end

  # POST /gatitos
  def create
    @gatito = Gatito.new(gatito_params)

    if @gatito.save
      render json: @gatito, status: :created, location: @gatito
    else
      render json: @gatito.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gatitos/1
  def update
    if @gatito.update(gatito_params)
      render json: @gatito
    else
      render json: @gatito.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gatitos/1
  def destroy
    @gatito.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gatito
      @gatito = Gatito.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gatito_params
      params.require(:gatito).permit(:nombre, :edad, :nivel_maldad, :raza, :comidad_favorita)
    end
end
