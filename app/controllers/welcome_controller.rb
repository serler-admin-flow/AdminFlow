class WelcomeController < ApplicationController
  def homepage
    
  end
  
  def login
    @login = login.html.erb
  end 
  
  def biblio
    @biblio = biblio.html.erb
  end
  
end
