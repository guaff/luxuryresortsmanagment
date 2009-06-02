def path_to(page_name)
  case page_name
  
  when /the homepage/i
    root_path
  
  when /admin_page/
    "/admin"
     
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end