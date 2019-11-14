Feature: Jugadas de Vingo

Scenario: Ver la home
  Given entro a pagina principal
  Then debo ver "Bienvenido a VINGO"

Scenario: Iniciar jugada
  Given entro a pagina principal
  When presiono "Iniciar Juego"
  Then debo ver "Partida iniciada"

Scenario: Sacar Bolilla
  Given entro a pagina principal
    And presiono "Iniciar Juego"
  When presiono "Sacar Bolilla"
  Then debo ver "RESULTADO"

Scenario: Sacar las 5 Bolillas del carton
  Given entro a pagina principal
    And presiono "Iniciar Juego"
   When asigno proxima bolilla en 1 y "Sacar Bolilla" 
	And asigno proxima bolilla en 2 y "Sacar Bolilla"
	And asigno proxima bolilla en 3 y "Sacar Bolilla"
	And asigno proxima bolilla en 4 y "Sacar Bolilla"
	And asigno proxima bolilla en 5 y "Sacar Bolilla"
  Then debo ver "GANO"

Scenario: Sacar las 5 Bolillas del carton
  Given entro a pagina principal
    And presiono "Iniciar Juego"
   When asigno proxima bolilla en 3 y "Sacar Bolilla" 
	And asigno proxima bolilla en 2 y "Sacar Bolilla"
	And asigno proxima bolilla en 1 y "Sacar Bolilla"
	And asigno proxima bolilla en 5 y "Sacar Bolilla"
	And asigno proxima bolilla en 4 y "Sacar Bolilla"
  Then debo ver "GANO"

Scenario: Sacar las 5 Bolillas del carton
  Given entro a pagina principal
    And presiono "Iniciar Juego"
   When asigno proxima bolilla en 6 y "Sacar Bolilla" 
	And asigno proxima bolilla en 2 y "Sacar Bolilla"
	And asigno proxima bolilla en 1 y "Sacar Bolilla"
	And asigno proxima bolilla en 5 y "Sacar Bolilla"
	And asigno proxima bolilla en 4 y "Sacar Bolilla"
  Then debo ver "RESULTADO: "

