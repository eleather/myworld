class MainController < ApplicationController
  layout 'application', :only => ['index']
  
  def index
    @title = 'Home'
    @selected_tab = params[:tab]
  end
end
