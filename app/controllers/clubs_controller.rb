class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(params[:club])
    if @club.save
      flash[:notice] = t(:club_saved)
      redirect_to @club
    else
      render :action => 'new'
    end
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    if @club.update_attributes(params[:club])
      flash[:notice] = t(:club_updated)
      redirect_to @club
    else
      render :action => 'edit'
    end
  end

  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    flash[:notice] = t(:club_deleted)
    redirect_to clubs_url
  end
end

