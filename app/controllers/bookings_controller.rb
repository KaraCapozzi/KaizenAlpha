class BookingsController < ApplicationController
  def new
  @booking = Booking.new
end

def create
 @booking = Booking.find(params[:mentor_id])
 @booking.user_id = current_user.id



 @booking.booking_date = params[:booking][:booking_date]
 @booking.booking_time = params[:booking][:booking_time]

 if @booking.save
  @booking.status = 'false'
  redirect_to root_url
end

def index
 @bookings = Booking.all
end

def show

end

def destroy

end

end
