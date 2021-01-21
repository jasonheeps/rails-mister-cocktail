class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find_by_id(params[:id])
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end

  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end
end
