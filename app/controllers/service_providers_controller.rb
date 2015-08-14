class ServiceProvidersController < ApplicationController
  skip_before_action :authenticate_service_provider!, :only =>[:index, :show,]

  def index

  end

  def show
      @service_provider = ServiceProvider.find(params[:id])
      @review = Review.new

    end

    def new
      @service_provider = ServiceProvider.new

    end

    def create
      @service_provider = ServiceProvider.new
      @service_provider = current_service_provider
      @service_provider.company_name = params[:company_name]
      if @service_provider.save
        redirect_to "/service_providers", :notice => "Service provider created successfully."
      else
        render 'new'
      end
    end

    def edit
      @service_provider = ServiceProvider.find(params[:id])

    end

    def update
      @service_provider = ServiceProvider.find(params[:id])
      @service_provider.company_name = params[:company_name]
      if @service_provider.save
        render 'show', :notice => "Service provider updated successfully."
      else
        render 'edit'
      end
    end

    def destroy
      @service_provider = ServiceProvider.find(params[:id])

      @service_provider.destroy

      redirect_to "/service_providers", :notice => "Service provider deleted."
    end

end
