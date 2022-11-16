class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :edit, :destroy]
  def index
    @flats = Flat.all

    if params[:search_by_price]
      @flats = @flats.where("price_per_night <= ? ", params[:search_by_price])
    end
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: "Flat to rent was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: "Flat was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_url, notice: "Flat was successfully deleted."
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :address, :number_of_guests, :price_per_night, :picture)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
