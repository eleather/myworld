class MainController < ApplicationController
  layout 'application', :only => ['index', 'search']
  
  def index
    @title = 'Home'
    @selected_tab = params[:tab]
  end
  
  def search
    @search_term = params[:q]
    
    @result_worlds = World.find_for_user(current_user, "name like '%#{@search_term}%'")
    
    @result_adventures_by_title = Adventure.find_for_user(current_user, "name like '%#{@search_term}%'")
    
    @result_adventures_by_text = Adventure.find_for_user(current_user, "(description like '%#{@search_term}' or tiles like '%#{@search_term}' or expanding_description like '%#{@search_term}')")
  end
end
