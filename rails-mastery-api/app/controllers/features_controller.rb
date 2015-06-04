class FeaturesController < ApplicationController
  def index
    @features = Feature.all
    render json: @features
  end

  def show
    @feature = Feature.find(params[:id])
    render json: @feature
  end

  def create
    @feature = Feature.new(feature_params)
    if @feature.save
      render json: @feature
    else
      render json: @feature.errors
    end
  end

  private

  def feature_params 
    params.require(:feature).permit(:text, :description)
  end
end
