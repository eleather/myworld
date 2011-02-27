class MainController < ApplicationController
  layout 'application', :only => ['index']
  
  def index
    @title = 'Your Adventures'
  end
end
