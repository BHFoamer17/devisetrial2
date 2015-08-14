class ReviewsController < ApplicationController
  def index
    @reviews = Review.all

  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.image = params[:image]
    @review.street_address = params[:street_address]
    @review.year_completed = params[:year_completed]
    @review.month_completed = params[:month_completed]
    @review.cost = params[:cost]
    @review.relationship = params[:relationship]
    @review.review = params[:review]
    @review.rating = params[:rating]
    @review.customer_id = params[:customer_id]
    @review.service_provider_id = params[:service_provider_id]

    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.image = params[:image]
    @review.street_address = params[:street_address]
    @review.year_completed = params[:year_completed]
    @review.month_completed = params[:month_completed]
    @review.cost = params[:cost]
    @review.relationship = params[:relationship]
    @review.review = params[:review]
    @review.rating = params[:rating]
    @review.customer_id = params[:customer_id]
    @review.service_provider_id = params[:service_provider_id]

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
