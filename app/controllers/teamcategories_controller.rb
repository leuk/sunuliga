class TeamcategoriesController < ApplicationController
  def index
    @teamcategories = Teamcategory.all
  end
  
  def show
    @teamcategory = Teamcategory.find(params[:id])
  end
  
  def new
    @teamcategory = Teamcategory.new
  end
  
  def create
    @teamcategory = Teamcategory.new(params[:teamcategory])
    if @teamcategory.save
      flash[:notice] = "Successfully created teamcategory."
      redirect_to @teamcategory
    else
      render :action => 'new'
    end
  end
  
  def edit
    @teamcategory = Teamcategory.find(params[:id])
  end
  
  def update
    @teamcategory = Teamcategory.find(params[:id])
    if @teamcategory.update_attributes(params[:teamcategory])
      flash[:notice] = "Successfully updated teamcategory."
      redirect_to @teamcategory
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @teamcategory = Teamcategory.find(params[:id])
    @teamcategory.destroy
    flash[:notice] = "Successfully destroyed teamcategory."
    redirect_to teamcategories_url
  end
end
