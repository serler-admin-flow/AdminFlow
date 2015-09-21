class WelcomeController < ApplicationController
  def homepage
  end
  
  def biblio
    @biblio = biblio.html.erb
  
    
  end
  
end
