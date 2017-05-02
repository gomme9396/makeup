class ConsultingController < ApplicationController

  def c_write
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
    @consults = Consult.new

  end

  def c_list
    @consults = Consult.all
  end

  def c_handout
    lesson = Consult.new

    lesson.c_name = params[:c_name]
    lesson.c_writer = params[:c_writer]
    lesson.c_email = params[:c_email]
    lesson.c_intro = params[:c_intro]
    lesson.c_curri = params[:c_curri]
    lesson.c_price = params[:c_price]
    lesson.c_oneday = params[:c_oneday]
    lesson.c_group = params[:c_group]
    lesson.c_material = params[:c_material]
    lesson.c_time = params[:c_time]

    lesson.save

    redirect_to "/consulting/c_list"
  end

  def c_info
    @consult = Consult.find(params[:id])
  end




end
