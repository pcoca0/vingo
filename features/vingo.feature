Feature: Jugadas de Vingo

Scenario: Ver la home
  Given entro a pagina principal
  Then debo ver "Bienvenido a VINGO"

Scenario: Iniciar jugada
  Given entro a pagina principal
  When presiono boton "Iniciar Juego"
  Then debo ver "Partida iniciada"

Scenario: Sacar Bolilla
  Given entro a pagina principal
    And presiono boton "Iniciar Juego"
  When presiono boton "Sacar Bolilla"
  Then debo ver "RESULTADO"

Scenario: Sacar 5 Bolillas
  Given entro a pagina principal
    And presiono boton "Iniciar Juego"
  When presiono boton "Sacar Bolilla"
    And presiono boton "Sacar Bolilla"
    And presiono boton "Sacar Bolilla"
    And presiono boton "Sacar Bolilla"
    And presiono boton "Sacar Bolilla"
  Then debo ver "GANO"

