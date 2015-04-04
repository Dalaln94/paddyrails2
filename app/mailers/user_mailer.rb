class UserMailer < ActionMailer::Base
  default :from => "e7jizli@gmail.com"

 def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.fname} <#{user.email}>", :subject => "Registration Confirmation")
 end
 
 def booking_confirmation(booking, restaurant, user)
    @booking = booking
    @restaurant = restaurant
    @user = user
    attachments.inline["qrcode.png"] = File.binread(@booking.qrcode)
    mail(:to => "#{booking.user.fname} <#{booking.user.email}>", :subject => "BOOKING Confirmation")
  end
 end
