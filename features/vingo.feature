Feature: Jugadas de Vingo

Scenario: Ver la home
  Given entro a pagina principal
  Then debo ver "Bienvenido a VINGO"

Scenario: Iniciar jugada
  Given entro a pagina principal
  When presiono boton "Iniciar Juego"
  Then debo ver "Partida iniciada"
