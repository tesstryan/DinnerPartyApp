class ChefsController < ApplicationController

  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @chef = Chef.new
    @chef.name = params[:name]
    @chef.image_url = params[:image_url]
    @chef.description = params[:description]
    @chef.celeb_name = params[:celeb_name]
    @chef.celeb_url = params[:celeb_url]

    if @chef.save
      redirect_to dinners_url
    else
      render 'new'
    end
  end

  def edit
    @chef = Chef.find_by(:id => params[:id])
  end

  def update
    @chef = Chef.find_by(:id => params[:id])
    @chef.name = params[:name]
    @chef.image_url = params[:image_url]
    @chef.description = params[:description]
    @chef.celeb_name = params[:celeb_name]
    @chef.celeb_url = params[:celeb_url]

    if @chef.save
      redirect_to chefs_url
    else
      render 'new'
    end
  end

  def destroy
    @chef = Chef.find_by(:id => params[:id])
    @chef.destroy
    redirect_to chefs_url
  end
end
