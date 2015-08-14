class CustomersController < ApplicationController
  skip_before_action :authenticate_customer!, :only =>[:index, :show,]

  def index
    @customers = Customer.all

  end

  def show
    @customer = Customer.find(params[:id])
    @review = Review.new

  end

  def new
    @customer = Customer.new
    @review = Review.new

  end

  def create
    @customer = Customer.new
    @customer = current_customer
    @customer.company = params[:company]
    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]

    if @customer.save
      redirect_to "/customers", :notice => "Customer created successfully."
    else
      render 'new'
    end

  end

  def edit
    @customer = Customer.find(params[:id])

  end

  def update
    @customer = Customer.find(params[:id])
    @customer = current_customer
    @customer.company = params[:company]
    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]

    if @customer.save
      redirect_to "/customers", :notice => "Customer updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @customer = Customer.find(params[:id])

    @customer.destroy

    redirect_to "/customers", :notice => "Customer deleted."

  end


end
