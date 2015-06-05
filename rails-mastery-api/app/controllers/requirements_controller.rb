class RequirementsController < ApplicationController
  before_filter :determine_scope

  # TODO: convert to jbuilder.
  def index
    @requirements = @scope.all
    render :index
  end

  def show
    @requirement = Requirement.find(params[:id])
    render :show
  end

  def create
    @requirement = @scope.create(requirement_params)
    render :show
  end

  private

  def determine_scope
    if (id = params[:feature_id])
      @scope = Feature.find(id).requirements
    else
      @scope = Requirement
    end
  end

  def requirement_params
    params.require(:requirement).permit(:text, :feature_id)
  end
end
