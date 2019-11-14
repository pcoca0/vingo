class Bingo
	def initialize
		@cartonUno = [[]]
		@bolillaSalida=[]
	        @bolillaPreparada=nil 
 		@arrayNumerosCarton=[[]]
	        cont=0
	        90.times do
	          cont+=1
	          @arrayNumerosCarton.push([cont,"WHITE"])
	       	end
		@arrayNumerosCarton = @arrayNumerosCarton.shuffle

		@arrayNumerosBolillero=[]
	        cont=0
	        90.times do
	          cont+=1
	          @arrayNumerosBolillero.push(cont)
	       	end
		@arrayNumerosBolillero = @arrayNumerosBolillero.shuffle
		
	end
	
	def retornarCartonJugador
	    @cartonUno
	end

	def asignarCartonJugador	    	
	    10.times do
	    	@cartonUno.push(@arrayNumerosCarton.pop)	    
	    end
	    #@cartonUno = [[1,"WHITE"],[2,"WHITE"],[3,"WHITE"],[4,"WHITE"],[5,"WHITE"]]					
	end
	
	def prepararCartonJugador	    	
	    @cartonUno = [[1,"WHITE"],[2,"WHITE"],[3,"WHITE"],[4,"WHITE"],[5,"WHITE"],[6,"WHITE"],[7,"WHITE"],[8,"WHITE"],[9,"WHITE"],  [10,"WHITE"]]				
	end
	
	def retornarBolillaSalida
	    @bolillaSalida
	end
	
	def prepararBolilla param      
	    @bolillaPreparada = param
	end

	def sacarBolilla 
	    if @bolillaPreparada.nil? 
	       @bolillaSalida.push(@arrayNumerosBolillero.pop())
        else
	       @bolillaSalida.push(@bolillaPreparada)
	       @bolillaPreparada = nil	
	    end
	    			
	end
	
	def verificarCarton
		 if @bolillaSalida == []
			return ""
		else	
			count=0
			@bolillaSalida.each{|bolilla|
				@cartonUno.each{|numero|	
					if numero[0] == bolilla
						numero[1]="GREEN"
						count+=1						
						break			
					end
				}				
			}
			if @cartonUno.count == count
				return "GANO"
			else
				return @cartonUno, @bolillaSalida
			end
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


