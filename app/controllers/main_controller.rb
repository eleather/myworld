class MainController < ApplicationController
  layout 'application', :only => ['index']
  
  def index
    @title = 'Home'
    @selected_tab = params[:tab]
  end
  
  def search_result
    @search_term = params[:q]
    
    if @search_term && !@search_term.blank?
      @result_worlds = World.find_for_user(current_user, "name like '%#{@search_term}%'")
    
      @result_adventures_by_title = Adventure.find_for_user(current_user, "name like '%#{@search_term}%'")
    
      @result_adventures_by_text = Adventure.find_for_user(current_user, "(description like '%#{@search_term}' or tiles like '%#{@search_term}' or expanding_description like '%#{@search_term}')")
    end
  end
end
