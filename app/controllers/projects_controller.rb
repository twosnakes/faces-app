class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    
  end

  def user_index
    @projects_completed = Project.where( completed: true, user_id: params[:user_id] )
    @projects_current = Project.where( current: true, user_id: params[:user_id] )
    @user = User.find(params[:user_id])
  end

  def new
  end
  
  def create
    project = Project.new(
                          user_id: current_user.id,
                          completed: false, 
                          current: true
                          ) 
    project.save

    redirect_to "/users/#{project.user_id}/projects/#{project.id}" 
    
  end

  def show
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.assign_attributes(    
                              title: params[:title],
                              face: params[:face],
                              face_color: params[:face_color],
                              eyes: params[:eyes],
                              nose: params[:nose],
                              mouth: params[:mouth]
                              )

    project.save

    redirect_to "/users/#{project.user_id}/projects/#{project.id}"  
  end

  def destroy
    project = Project.find(params[:id])
    user_id = params[:user_id]
    project.delete
    
    redirect_to "/users/#{user_id}"
  end
end
