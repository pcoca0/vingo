require "./lib/bingo.rb"

describe "Bingo" do

	it " Verificar que jugador no tenga carton" do
	bingo = Bingo.new
	expect( bingo.retornarCartonJugador).to eq [[]]
	end

	it " Verificar que se asigna el valor [1,2,3,4,5]al jugador " do
	bingo = Bingo.new
	bingo.prepararCartonJugador
	expect( bingo.retornarCartonJugador ).to eq [[1,"WHITE"],[2,"WHITE"],[3,"WHITE"],[4,"WHITE"],[5,"WHITE"],[6,"WHITE"],[7,"WHITE"],[8,"WHITE"],[9,"WHITE"],  [10,"WHITE"]]
	end
	
	it " Verificar que no haya bolillas fuera del bolillero " do
	bingo = Bingo.new
	expect( bingo.retornarBolillaSalida ).to eq []
	end

	it " Sacar bolilla número 4 " do
	bingo = Bingo.new
        bingo.prepararBolilla 4
	bingo.sacarBolilla
	expect( bingo.retornarBolillaSalida ).to eq [4]
	end

	it " Verificar si el jugador gano " do
	bingo = Bingo.new
	bingo.prepararCartonJugador 
	bingo.prepararBolilla 1
	bingo.sacarBolilla
	bingo.prepararBolilla 2
	bingo.sacarBolilla 
	bingo.prepararBolilla 3
	bingo.sacarBolilla 
	bingo.prepararBolilla 4
	bingo.sacarBolilla 
	bingo.prepararBolilla 5
	bingo.sacarBolilla 
	bingo.prepararBolilla 6
	bingo.sacarBolilla 
	bingo.prepararBolilla 7
	bingo.sacarBolilla 
	bingo.prepararBolilla 8
	bingo.sacarBolilla 
	bingo.prepararBolilla 9
	bingo.sacarBolilla 
	bingo.prepararBolilla 10
	bingo.sacarBolilla 
	expect( bingo.verificarCarton ).to eq "GANO"
	end

	it " Verificar que la bolilla obtenida no haya salido " do
	bingo = Bingo.new
	bingo.asignarCartonJugador
	bingo.prepararBolilla 6
	bingo.sacarBolilla
	expect( bingo.existeBolilla 5 ).to eq false
	end


end

