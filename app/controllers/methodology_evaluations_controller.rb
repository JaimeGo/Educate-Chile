class MethodologyEvaluationsController < ApplicationController

  def create
    @project_connection = ProjectConnection.find(params[:project_connection_id])
    @methodology = Methodology.find(params[:methodology_id])
    @meth_eval = @project_connection.methodology_evaluations.build(methodology_evaluations_params)
    @meth_eval.methodology = @methodology
    @meth_eval.save

    redirect_to current_user
  end

  def destroy
    @project_connection = Project.find(params[:project_connection_id])
    @meth_eval = @project_connection.methodology_evaluations.find(params[:id]).destroy
    redirect_to @project_connection
  end

  private
    def methodology_evaluation_params
      params.require(:methodology_evaluation).permit(:reason, :utility, :pertinence, :relevance)
    end
end
