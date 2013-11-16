class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by(:id => params[:id])
  end

  def new
  end

  def create
    # raise params[:dinner_id].first.class.inspect
    @guest = Guest.new
    @guest.name = params[:name]
    @guest.description = params[:description]

    if @guest.save
      params[:dinner_id].each do |dinner_date|
        attendee = Attendee.new
        attendee.dinner_id = dinner_date
        attendee.guest_id = @guest.id
        attendee.save
      end
      redirect_to guests_url
    else
      render 'new'
    end
  end

  def edit
    @guest = Guest.find_by(:id => params[:id])
  end

  def update
    # raise params.inspect
    @guest = Guest.find_by(:id => params[:id])
    @guest.name = params[:name]
    @guest.description = params[:description]

    # params[:dinner_id]
    attendee = Attendee.find_by(guest_id: @guest.id)
    attendee.dinner_id = params[:dinner_id]
    attendee.save
    # Attendee.find_by(guest_id: #, dinner_id: #)

    if @guest.save
      redirect_to guests_url
    else
      render 'new'
    end
  end

  def destroy
    @guest = Guest.find_by(:id => params[:id])
    @guest.destroy
    redirect_to guests_url
  end
end
