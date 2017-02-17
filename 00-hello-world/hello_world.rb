def hello_world name = nil #give name a default so when no name is passed, it will have default value
  if name == nil || name == ""
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end
