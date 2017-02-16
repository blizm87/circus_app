class CircusController < ApplicationController
  before_action :set_circus, only: [:show, :update, :destroy]

  # GET /circus
  def index
    @circus = Circus.all

    render json: @circus
  end

  # GET /circus/1
  def show
    render json: @circus
  end

  # POST /circus
  def create
    @circus = Circus.new(circus_params)

    if @circus.save
      render json: @circus, status: :created, location: @circus
    else
      render json: @circus.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /circus/1
  def update
    if @circus.update(circus_params)
      render json: @circus
    else
      render json: @circus.errors, status: :unprocessable_entity
    end
  end

  # DELETE /circus/1
  def destroy
    @circus.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circus
      @circus = Circus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def circus_params
      params.require(:circus).permit(:location, :starts_on, :ends_on, :num_of_tix)
    end
end
