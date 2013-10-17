class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  layout "sessions"
  def contact
  end	

  def who_we_are
  end	

  def what_we_do
  end
  
  def conditions
  end	

  def privacy
  end	
end 