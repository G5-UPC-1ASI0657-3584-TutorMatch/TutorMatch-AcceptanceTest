Feature: Inicio de sesión
  Como usuario registrado,
  Quiero iniciar sesión en la plataforma TutorMatch
  Para acceder a mis funcionalidades personalizadas según mi rol

  Scenario: Inicio de sesión exitoso
    Given Que el usuario tiene una cuenta previamente registrada
    When Ingresa su correo y contraseña válidos
    Then El sistema debe autenticarlo correctamente
    And Redirigirlo a su dashboard correspondiente

  Scenario: Inicio fallido por credenciales incorrectas
    Given Que el usuario intenta iniciar sesión
    When Ingresa una contraseña incorrecta
    Then El sistema debe mostrar un mensaje de error
    And Permitir reintentar o recuperar contraseña

  Scenario: Inicio fallido por campos vacíos
    Given Que el formulario de login está vacío
    When El usuario hace clic en "Iniciar sesión"
    Then El sistema debe mostrar un mensaje indicando que todos los campos son obligatorios