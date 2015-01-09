require("sinatra")
require("sinatra/reloader")
require("./lib/word_counter")

# Set port for compatability with Nitrous.IO 
configure :development do   
  set :bind, '0.0.0.0'   
  set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end

get("/") do
  erb(:form)
end

get("/results") do
  @string_input = params.fetch("words")
  @find = params.fetch("find")
  
  @count = @string_input.word_counter(@find)
  
  erb(:results)
end