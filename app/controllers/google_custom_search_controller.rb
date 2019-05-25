class GoogleCustomSearchController < ApplicationController
  def index
    @results = GoogleCustomSearch.search(params[:parametro]);
    render json: @results 
  end
  
end
