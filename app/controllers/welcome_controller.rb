class WelcomeController < ApplicationController
  
  def index    
    @artilces = Artilce.all

    respond_to do |format|
      format.html
    end
    
  end

end
