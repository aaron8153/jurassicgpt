class CagesController < ApplicationController
  before_action :set_cage, only: [:show, :update, :destroy]

  # GET /cages
  def index
    @cages = Cage.all

    if params[:power_status].present?
      @cages = @cages.where(power_status: params[:power_status])
    end

    render json: @cages
  end

  # GET /cages/1
  def show
    render json: @cage, include: [:dinosaurs]
  end

  # POST /cages
  def create
    @cage = Cage.new(cage_params)

    if @cage.save
      render json: @cage, status: :created, location: @cage
    else
      render json: @cage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cages/1
  def update
    if @cage.update(cage_params)
      render json: @cage
    else
      render json: @cage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cages/1
  def destroy
    if @cage.dinosaurs.any?
      render json: { error: "Cannot delete a cage with dinosaurs inside" }, status: :unprocessable_entity
    else
      @cage.destroy
      head :no_content
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cage
    @cage = Cage.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cage_params
    params.require(:cage).permit(:name, :power_status, :max_capacity)
  end
end
