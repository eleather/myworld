class MainController < ApplicationController
  layout 'top_level', :only => ['index']
  
  def index
    @title = 'Your Adventures'
  end
end
