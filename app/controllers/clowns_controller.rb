class ClownsController < ApplicationController
  before_action :set_clown, only: [:show, :update, :destroy]

  # GET /clowns
  def index
    @clowns = Clown.all

    render json: @clowns
  end

  # GET /clowns/1
  def show
    render json: @clown
  end

  # POST /clowns
  def create
    @clown = Clown.new(clown_params)

    if @clown.save
      render json: @clown, status: :created, location: @clown
    else
      render json: @clown.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clowns/1
  def update
    if @clown.update(clown_params)
      render json: @clown
    else
      render json: @clown.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clowns/1
  def destroy
    @clown.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clown
      @clown = Clown.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clown_params
      params.require(:clown).permit(:name, :nose_color, :car_id, :circus_id)
    end
end
