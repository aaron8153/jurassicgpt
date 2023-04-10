class SpeciesController < ApplicationController
  before_action :set_species, only: [:show, :update, :destroy]

  def index
    @species = Species.all
    render json: @species
  end

  def show
    render json: @species
  end

  def create
    @species = Species.new(species_params)

    if @species.save
      render json: @species, status: :created, location: @species
    else
      render json: @species.errors, status: :unprocessable_entity
    end
  end

  def update
    if @species.update(species_params)
      render json: @species
    else
      render json: @species.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @species.destroy
  end

  private

  def set_species
    @species = Species.find(params[:id])
  end

  def species_params
    params.require(:species).permit(:name, :diet)
  end
end
