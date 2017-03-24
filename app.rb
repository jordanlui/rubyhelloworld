require "sinatra"
require "open-uri"
require "json"

get "/" do
	# "HELLO WORLD"
	erb :home
end

get "/about" do
	"This is Jordan's first Ruby app on Heroku. Feeling good"
end

get "/api" do
	response = open('https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo').read
	response = JSON.parse(response)
	url = response["url"]

	"API PAGE. Result is #{response["url"]}"
end



get "/cats" do
	# inline cat image HTML tag?
	"This is a page about cats"

end

get "/cat" do
	# This is how we link out to an HTL page
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