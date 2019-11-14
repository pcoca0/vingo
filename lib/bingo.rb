class Bingo
	def initialize
		@cartonUno = nil
		@bolillaSalida=[]
	    @bolillaPreparada=nil 
	end
	
	def retornarCartonJugador
	    @cartonUno
	end

	def asignarCartonJugador
	    @cartonUno = [[1,"WHITE"],[2,"WHITE"],[3,"WHITE"],[4,"WHITE"],[5,"WHITE"]]			
	end
	
	def retornarBolillaSalida
	    @bolillaSalida
	end
	
	def prepararBolilla param      
	    @bolillaPreparada = param
	end

	def sacarBolilla 
	    if @bolillaPreparada.nil? 
	       @bolillaSalida.push(rand(5)+1)
        else
	       @bolillaSalida.push(@bolillaPreparada)
	       @bolillaPreparada = nil	
	    end
	    			
	end
	
	def verificarCarton
		 if @bolillaSalida == []
			return ""
		else
			@cartonUno.each{|numero|
				@existe=false
				@bolillaSalida.each{|bolilla|
					if numero[0] == bolilla
						@existe=true						
						break			
					end
				}
				if @existe == false
					return "PERDIO"
				end				
			}
			return "GANO"
		end
	end

	def existeBolilla param  
	    existe=false	   
	    @bolillaSalida.each{|bolilla|
		if bolilla == param
			existe=true
			break
		end
	    }
	    return existe	
	end

		
end


