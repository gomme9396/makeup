class HomeController < ApplicationController
  def index
  end


  def write_customer
    @list = List.new(name_customer: params[:name_customer], email_customer: params[:email_customer])
    @list.save
    redirect_to :back
  end

  def write_artist
    @artist = Artist.new(name_artist: params[:name_artist], phone_artist: params[:phone_artist], email_artist: params[:email_artist])
    @artist.save
    redirect_to :back
  end

  def list
    @list_customer = List.all
    @list_artist = Artist.all
  end

end
