require("sinatra")
require("sinatra/reloader")
require("./lib/word_counter")

get("/") do
  erb(:form)
end

get("/results") do
  @string_input = params.fetch("words")
  @find = params.fetch("find")
  
  @count = @string_input.word_counter(@find)
  
  erb(:results)
end