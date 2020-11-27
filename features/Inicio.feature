Feature: "Mensaje de Bienvenida"

Scenario: Titulo de la aplicacion
When inicio de la aplicacion
Then el titulo es "Bienvenido a adivina el País"

Scenario: Mostrar pais oculto
When inicio de la aplicacion
Then el titulo es "El país a adivinar es: *****"
