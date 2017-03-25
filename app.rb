require "sinatra"
require "open-uri"
require "json"
set :views, settings.root + '/templates'

get "/" do
	"HELLO WORLD"
	# erb :home
	
end

get "/about" do
	"This is Jordan's first Ruby app on Heroku. Feeling good"
end

get "/pod" do
	response = open('https://api.nasa.gov/planetary/apod?api_key=1y24jFuTzpmxmAuIzbq8a3TlavyUZk8hqrBIREUO').read
	response = JSON.parse(response)
	url = response["url"]

	# "API PAGE. Result is #{response["url"]}"
	erb :img, :locals => {:url => url}
end

get "/mars" do
	target = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&api_key=1y24jFuTzpmxmAuIzbq8a3TlavyUZk8hqrBIREUO"
	response = open(target).read
	response = JSON.parse(response)
	url = response["photos"][0]["img_src"]

	# "API PAGE. Result is #{url}"
	erb :img, :locals => {:url => url}
end

get "/map" do
	# deliver link to a map page
	"this will be a map page"
	erb :map
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