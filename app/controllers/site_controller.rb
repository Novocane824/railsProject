class SiteController < ApplicationController
  def index
    flash.now[:notice] = "Hello"
  end
  def privacy
    flash.now[:notice] = "Privacy page"
  end
  def terms
  end
  def contact
  end
end