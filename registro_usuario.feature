Feature: Registro de usuario
  Como nuevo usuario de la plataforma,
  Quiero registrarme como estudiante o tutor
  Para acceder a los servicios de TutorMatch según mi rol

  Scenario: Registro exitoso
    Given Que el visitante se encuentra en la página de registro
    When Completa el formulario con datos válidos (nombre, correo, contraseña, rol)
    And Hace clic en el botón “Registrarse”
    Then El sistema debe crear la cuenta del usuario
    And Mostrar un mensaje de confirmación de registro

  Scenario: Acceso posterior al registro
    Given Que el usuario ha sido registrado exitosamente
    When Intenta iniciar sesión con las credenciales proporcionadas
    Then El sistema debe permitir el acceso a la plataforma según su rol

  Scenario: Registro fallido por datos inválidos
    Given Que el visitante está en la página de registro
    When Deja campos obligatorios vacíos o ingresa un correo inválido
    Then El sistema debe mostrar mensajes de error específicos para cada caso