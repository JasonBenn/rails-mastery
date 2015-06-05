class FeaturesController < ApplicationController
  rescue_from ActiveRecord::StatementInvalid do |exception|
    # this message isn't appropriate. create an error with a default to_s and return that instead.
    # how do you make errors helpful?
    # TODO.
    render json: { message: "Error: cannot process request" }, status: :unprocessable_entity
  end

  def index
    @features = Feature.includes :requirements
    @requirements = @features.flat_map &:requirements
  end

  def show
    @feature = Feature.find(params[:id])
    @requirements = @feature.requirements
  end

  def create
    @feature = Feature.new(feature_params)
    if @feature.save
      render :show
    else
      render :error
    end
  end

  def update
    @feature = Feature.find(params[:id])

    if @feature.update(feature_params)
      render :show
    else
      render :error
    end
  end

  def destroy
    Feature.find(params[:id]).destroy
    head :no_content
  end

  private

  def feature_params 
    params.require(:feature).permit(:text, :description)
  end
end
