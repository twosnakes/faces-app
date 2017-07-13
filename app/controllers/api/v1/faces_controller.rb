class Api::V1::FacesController < ApplicationController

  def show
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(  
                      title: params[:title],
                      face: params[:face],
                      eyes: params[:eyes],
                      mouth: params[:mouth]
      )
    
    render :show
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    render json: {message: 'Project Destroyed'}, status: 200
    
  end
end
