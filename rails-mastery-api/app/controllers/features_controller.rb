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

  def update
    @feature = Feature.find(params[:id])

    if @feature.update(feature_params)
      render json: @feature
    else
      render json: @feature.errors
    end
  end

  def destroy
    @feature = Feature.find(params[:id])

    begin
      @feature.destroy
    rescue ActiveRecord::StatementInvalid => e
      render json: { message: e.message }, status: :not_acceptable and return
    end
    head :ok
  end

  private

  def feature_params 
    params.require(:feature).permit(:text, :description)
  end
end
