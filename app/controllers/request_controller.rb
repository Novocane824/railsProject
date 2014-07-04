class RequestController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    request = Request.new
    request.location = params[:request]
    request.date = params[:request]
    request.time = params[:request]

    if request.save
      render :create
    else
      render :text, "Error"
    end
  end

end