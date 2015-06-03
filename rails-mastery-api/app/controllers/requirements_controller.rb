class RequirementsController < ApplicationController
  before_filter :determine_scope

  def index
    @requirements = @scope.all
    render json: @requirements
  end

  def show
    @requirement = Requirement.find(params[:id])
    render json: @requirement
  end

  def determine_scope
    if (id = params[:feature_id])
      @scope = Feature.find(id).requirements
    else
      @scope = Requirement
    end
  end
end
