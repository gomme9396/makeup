class HomeController < ApplicationController
  def index
  end

  def write_customer
    @name_customer = params[:name_customer];
    @email_customer = params[:email_customer];
  end

  def write_artist
    @name_artist = params[:name_artist];
    @phone_artist = params[:phone_artist];
    @email_artist = params[:email_artist];
  end
  
end
