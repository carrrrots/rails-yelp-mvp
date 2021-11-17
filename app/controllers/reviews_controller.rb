class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

   def new
    @review = Review.new
  end

  def show
    @review = review.find(params[:id])
  end

  def create
    @review = review.new(review_params)
    @review.save

     redirect_to review_path(@review)
  end

   private

  def restaurant_params
    params.require(:review).permit(:name, :address, :phone_number, :category)
  end

  def destroy
    @reviews = Review.find(review_params)
    @review.destroy

    redirect_to review_path(@review)
  end
end
