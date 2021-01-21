class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find_by_id(params[:cocktail_id])
    @review.cocktail = @cocktail
    @review.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end