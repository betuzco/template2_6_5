Feature: "Adivinar letra"

Scenario: Adivinar letra correcta
Given inicio de la aplicacion
When introduzco la letra "h"
Then el titulo es "El país a adivinar es: *h***"

Scenario: intentar con letra incorrecta
Given inicio de la aplicacion
When introduzco la letra "z"
Then el titulo es "El país a adivinar es: *****"
And el titulo es "la letra z no esta en la palabra"
