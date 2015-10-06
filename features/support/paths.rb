module NavigationHelpers
  def path_to(page_name)
    case page_name
 
  when /the homepage/
    root_path
  when /the signup page/
    '/users/sign_up'
    #devise/registrations#new
    #new_user_registration
    #users/sign_up
  
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end 
 
 
  #  when /the home\s?page/
  #    '/'
  #  when /sign up page/
  #    '/users/sign_up'
  #  else
  #    begin
  #      page_name =~ /the (.*) page/
  #      path_components = $1.split(/\s+/)
  #      self.send(path_components.push('path').join('_').to_sym)
  #    rescue Object => e
  #      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
  #        "Now, go and add a mapping in #{__FILE__}"
  #    end
  #  end
  end
end

World(NavigationHelpers)