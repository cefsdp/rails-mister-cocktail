class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params[:cocktail])
    if @cocktail.save
      flash[:success] = 'Cocktail successfully created'
      redirect_to @cocktail
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def edit
    @cocktail = Cocktail.find(cocktail_params)
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update_attributes(params[:cocktail])
      flash[:success] = 'Cocktail was successfully updated'
      redirect_to @cocktail
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
