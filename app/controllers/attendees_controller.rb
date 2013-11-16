class AttendeesController < ApplicationController

  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @attendee = Attendee.new
    @attendee.dinner_id = params[:dinner_id]
    @attendee.guest_id = params[:guest_id]
    
    if @attendee.save
      redirect_to attendees_url
    else
      render 'new'
    end
  end

  def edit
    @attendee = Attendee.find_by(:id => params[:id])
  end

  def update
    @attendee = Attendee.find_by(:id => params[:id])
    @attendee.dinner_id = params[:dinner_id]
    @attendee.guest_id = params[:guest_id]
    
    if @attendee.save
      redirect_to attendees_url
    else
      render 'new'
    end
  end

  def destroy
    @attendee = Attendee.find_by(:id => params[:id])
    @attendee.destroy
    redirect_to attendees_url
  end
end
