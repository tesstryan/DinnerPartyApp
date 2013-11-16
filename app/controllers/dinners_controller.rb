class DinnersController < ApplicationController

  def index
    @dinners = Dinner.all
    @chef = Chef.all
    @guest = Guest.all
    @attendee = Attendee.all
  end

  def show
    @dinner = Dinner.find_by(:id => params[:id])
    @guest = Guest.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @dinner = Dinner.new
    @dinner.location = params[:location]
    @dinner.date = params[:date]
    @dinner.time = params[:time]
    @dinner.details = params[:details]
    @dinner.chef_id = params[:chef_id]

    if @dinner.save
      redirect_to dinners_url
    else
      render 'new'
    end
  end

  def edit
    @dinner = Dinner.find_by(:id => params[:id])
  end

  def update
    @dinner = Dinner.find_by(:id => params[:id])
    @dinner.location = params[:location]
    @dinner.date = params[:date]
    @dinner.time = params[:time]
    @dinner.details = params[:details]
    @dinner.chef_id = params[:chef_id]

    if @dinner.save
      redirect_to dinners_url
    else
      render 'new'
    end
  end

  def destroy
    @dinner = Dinner.find_by(:id => params[:id])
    @dinner.destroy
    redirect_to dinners_url
  end
end
