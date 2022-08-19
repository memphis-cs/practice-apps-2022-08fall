class TeamsController < ApplicationController
  def index
    @teams = Team.order(:name)
    render :index
  end

  def show
    @team = Team.find(params[:id])
    render :show
  end

  def new
    @team = Team.new
    render :new
  end

  def create
    @team = Team.new(params.require(:team).permit(:name, :home_city))
    if @team.save
      flash[:success] = 'Team was successfully created.'
      redirect_to teams_url
    else
      flash.now[:error] = 'Error! Unable to create team.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @team = Team.find(params[:id])
    render :edit
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(params.require(:team).permit(:name, :home_city))
      flash[:success] = 'Team was successfully updated.'
      redirect_to team_url(@team)
    else
      flash.now[:error] = 'Error! Unable to update team.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    flash[:success] = 'Team was successfully destroyed.'
    redirect_to teams_url
  end
end
