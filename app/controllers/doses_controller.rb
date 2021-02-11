class DosesController < ApplicationController
  def new
    @ingredient = Cocktail.find(params[:ingredient])
    @cocktail = Cocktail.find(params[:cocktail])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params[:dose])
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
  end
end
