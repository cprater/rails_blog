require 'rubygems'
require 'sinatra'

get '/' do 
	"Hello World"	
end

get '/about' do
	"This is a story all about how"
end


get '/hello/:name/:city/more/*' do 
	"Well hey there #{params[:name].capitalize} from #{params[:city].capitalize}. Your favorite things are #{params[:splat]}"
end

get '/form' do
	erb :form
end

post '/form' do
	"You said #{params[:message]}"
end

get '/secret' do
	erb :secret
end


post '/secret' do
	params[:message].reverse
end

get '/decrypt/:secret' do
	params[:message].reverse
end

not_found do 
	status 404
	'aint found shit son'
end