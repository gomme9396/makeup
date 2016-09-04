class HomeController < ApplicationController
  def index
  end


  def write_customer
    @name_customer = params[:name_customer]
    @email_customer = params[:email_customer]
    customer = Customer.new(name_customer: @name_customer, email_customer: @email_customer)
    customer.save
    redirect_to :back
  end

  def write_artist
    @name_artist = params[:name_artist]
    @phone_artist = params[:phone_artist]
    @email_artist = params[:email_artist]
    artist = Artist.new(name_artist: @name_artist, phone_artist: @phone_artist, email_artist: @email_artist)
    artist.save
    redirect_to :back
  end

  def list
    @list_customer = Customer.all
    @list_artist = Artist.all
  end

end
