class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    flash.now[:notice] = "Query Succesful"
  end

end