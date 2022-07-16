class UserProjectsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_user_project, only: %i[ destroy ]
  before_action :set_user


  # GET /user_projects or /user_projects.json
  def index
    authorize @user
    @user_projects = UserProject.all

  end


  # GET /user_projects/new
  def new
    authorize @user
    @user_project = UserProject.new

  end


  # POST /user_projects or /user_projects.json
  def create
    @user_project = UserProject.new(user_project_params)

    respond_to do |format|
      if @user_project.save
        format.html { redirect_to user_projects_url, notice: "User project was successfully created." }
        format.json { render :show, status: :created, location: @user_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_projects/1 or /user_projects/1.json


  # DELETE /user_projects/1 or /user_projects/1.json
  def destroy
    authorize @user

    @user_project.destroy

    respond_to do |format|
      format.html { redirect_to user_projects_url, notice: "User project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_project
      @user_project = UserProject.find(params[:id])
    end

    def set_user
      @user = current_user
    end
    # Only allow a list of trusted parameters through.
    def user_project_params
      params.require(:user_project).permit(:is_leader, :user_id, :project_id, :time_assigned)
    end
end
