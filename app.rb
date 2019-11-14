require 'sinatra'
require "./lib/bingo.rb"

get '/' do
  @@bingo = [1,2,3,4,5] #Bingo.new
  @@bolillaSalida = []
  @@bolilla = 0 #[1,2,3,4,5]
  erb :home
end

post '/juego' do
  @@resultado = ""
  #@@bingo.asignarCartonJugador 1
  erb :juego
end

post '/sacarBolilla' do
  #@@bingo.sacarBolilla 1
  @@bolillaSalida.push (@@bolilla += 1)
  if @@bolillaSalida.count == 5
    @@resultado = "GANO"
  end
  erb :juego
end
