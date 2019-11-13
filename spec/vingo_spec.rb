require "./lib/bingo.rb"

describe "Bingo" do

	it " Verificar que jugador no tenga carton" do
	bingo = Bingo.new
	expect( bingo.retornarCartonJugador).to eq nil
	end

	it " Verificar que se asigna el valor 5 al jugador " do
	bingo = Bingo.new
	bingo.asignarCartonJugador 5
	expect( bingo.retornarCartonJugador ).to eq 5
	end
	
	it " Verificar que no haya bolillas fuera del bolillero " do
	bingo = Bingo.new
	expect( bingo.retornarBolillaSalida ).to eq nil
	end

	it " Sacar bolilla número 4 " do
	bingo = Bingo.new
	bingo.sacarBolilla 4
	expect( bingo.retornarBolillaSalida ).to eq 4
	end

	it " Verificar que jugador gano " do
	bingo = Bingo.new
	bingo.asignarCartonJugador 5
	bingo.sacarBolilla 5
	expect( bingo.verificarCarton ).to eq "GANO"
	end

	it " Verificar que jugador perdio " do
	bingo = Bingo.new
	bingo.asignarCartonJugador 4
	bingo.sacarBolilla 5
	expect( bingo.verificarCarton ).to eq "PERDIO"
	end


end

