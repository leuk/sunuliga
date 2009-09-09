class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end
  
  def show
    @position = Position.find(params[:id])
  end
  
  def new
    @position = Position.new
  end
  
  def create
    @position = Position.new(params[:position])
    if @position.save
      flash[:notice] = "Successfully created position."
      redirect_to @position
    else
      render :action => 'new'
    end
  end
  
  def edit
    @position = Position.find(params[:id])
  end
  
  def update
    @position = Position.find(params[:id])
    if @position.update_attributes(params[:position])
      flash[:notice] = "Successfully updated position."
      redirect_to @position
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    flash[:notice] = "Successfully destroyed position."
    redirect_to positions_url
  end
end
