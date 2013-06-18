class WelcomeController < ApplicationController

  def index
  
  end

  def black
    render :layout => 'application_black'
  end

  def about
  
  end

  def contact
  
  end

  def change_locale
    I18n.locale = params[:locale]
    redirect_to index_path(:locale => params[:locale])
  end


end