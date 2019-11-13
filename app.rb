require 'sinatra'
require "./lib/bingo.rb"

get '/' do
  @@bingo = Bingo.new
  erb :home
end

post '/juego' do
  #@@bolillaSalida = 0
  #@@resultado = "XX"
  @@bingo.asignarCartonJugador 1
  erb :juego
end

post '/sacarBolilla' do
  @@bingo.sacarBolilla 2
  erb :juego
end
