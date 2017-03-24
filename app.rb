require "sinatra"

get "/" do
	"HELLO WORLD"
end

get "/about" do
	"This is Jordan's first Ruby app on Heroku. Feeling good"
end

get "/cats" do
	"This is a page about cats"
end

get "/cat" do
	send_file "cat.html"
end

get "/space" do
	"So you like space stuff? We should put a photo here"
end

get "/square/:x" do
	x = params[:x].to_i
	y = x*x
	"The square of your number is #{y}"
	
end