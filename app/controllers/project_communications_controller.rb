class ProjectCommunicationsController < ApplicationController
  before_action :set_project_communication, only: [:show, :edit, :update, :destroy]

  # GET /project_communications
  # GET /project_communications.json
  def index
    @project_communications = ProjectCommunication.all
  end

  # GET /project_communications/1
  # GET /project_communications/1.json
  def show
  end

  # GET /project_communications/new
  def new
    @project_communication = ProjectCommunication.new
  end

  # GET /project_communications/1/edit
  def edit
  end

  # POST /project_communications
  # POST /project_communications.json
  def create
    @project_communication = ProjectCommunication.new(project_communication_params)

    respond_to do |format|
      if @project_communication.save
        format.html { redirect_to @project_communication, notice: 'Project communication was successfully created.' }
        format.json { render :show, status: :created, location: @project_communication }
      else
        format.html { render :new }
        format.json { render json: @project_communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_communications/1
  # PATCH/PUT /project_communications/1.json
  def update
    respond_to do |format|
      if @project_communication.update(project_communication_params)
        format.html { redirect_to @project_communication, notice: 'Project communication was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_communication }
      else
        format.html { render :edit }
        format.json { render json: @project_communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_communications/1
  # DELETE /project_communications/1.json
  def destroy
    @project_communication.destroy
    respond_to do |format|
      format.html { redirect_to project_communications_url, notice: 'Project communication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_communication
      @project_communication = ProjectCommunication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_communication_params
      params.require(:project_communication).permit(:questions, :answers)
    end
end
