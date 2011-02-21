class MainController < ApplicationController
  
  def index
    redirect_to :controller => 'adventures'
  end
end
