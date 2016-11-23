class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :delete]
  before_action :set_restaurant, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    puts @review.valid?
    if @review.save
      puts "Saved"
      redirect_to restaurant_path(@restaurant)
    else
      puts "not saved"
      render :new
    end
  end

  def edit
    redirect_to restaurant_path(@restaurant)
  end

  def update
    redirect_to restaurant_path(@restaurant)
  end

  def delete
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
