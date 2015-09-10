class ProfilesController < ApplicationController
  protect_from_forgery

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(name: params[:profile]['name'], age: params[:profile]['age'], occupation: params[:profile]['occupation'], family: params[:profile]['family'], friends: params[:profile]['friends'], favourites: params[:profile]['favourites'], hobbies: params[:profile]['hobbies'],)
    if @profile.save
      redirect_to "/profile/#{@profile.id}"
    else
      render 'profiles/new'
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit 
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      redirect_to"/profiles/#{profile.id}"
    else
      render 'profiles/edit'
    end
  end

  def delete
    @profile = Profile.find(params[:id])
    if @profile.destroy
      redirect_to'/profiles'
    else
      redirect_to"/profiles/#{profile.id}"
    end
  end

end