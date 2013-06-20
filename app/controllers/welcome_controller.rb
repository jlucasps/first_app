class WelcomeController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :about, :contact]

  def index
  end

  def black
    render :layout => 'application_black'
  end

  def about  
  end

  def contact

  end

end