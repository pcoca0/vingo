require 'sinatra'
require "./lib/bingo.rb"

get '/' do
  @@bingo = Bingo.new
  @@resultado = ""
  @@bolilla = 0
  erb :home
end

post '/juego' do
  @@bingo.asignarCartonJugador
  @@imagenOculta = "visible"
  erb :juego
end

post '/sacarBolilla' do

  @@bingo.sacarBolilla
  @@imagenOculta = "visible"
  @@resultado = @@bingo.verificarCarton
  erb :juego

end
