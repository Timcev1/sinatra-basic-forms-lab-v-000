require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :index
end
get '/display_puppy.erb' do
  erb :display_puppy
end
get '/new' do
  erb :create_puppy
end

post '/create_puppy' do
  @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
end
end
