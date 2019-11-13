require 'sinatra'

get '/' do
    erb :home
end

post '/juego' do
  erb :juego
end
