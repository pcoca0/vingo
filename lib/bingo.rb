class Bingo
	def initialize
		@cartonUno = nil
		@bolillaSalida=nil 
	end
	
	def retornarCartonJugador
	    @cartonUno
	end

	def asignarCartonJugador param
	    @cartonUno = param			
	end
	
	def retornarBolillaSalida
	    @bolillaSalida
	end
	
	def sacarBolilla param
	    @bolillaSalida = param
	end
	
	def verificarCarton
	    if @bolillaSalida.nil?
			return ""
		else
			if @bolillaSalida == @cartonUno
				return "GANO"
			else    
				return "PERDIO"
			end		
		end
	end

		
end


