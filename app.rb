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
  erb :juego
end

post '/sacarBolilla' do
  @@bingo.sacarBolilla

  if @@bingo.retornarBolillaSalida.count == 10
    @@resultado = @@bingo.verificarCarton
  end

  erb :juego

end
