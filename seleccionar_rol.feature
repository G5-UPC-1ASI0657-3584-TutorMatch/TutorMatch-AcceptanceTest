Feature: Selección de rol al registrarse
  Como nuevo usuario de TutorMatch,
  Quiero poder elegir si soy estudiante o tutor al momento de registrarme
  Para que la plataforma me brinde una experiencia personalizada según mi rol

  Scenario: Selección de rol durante el registro
    Given Que el usuario accede al formulario de registro
    When Elige el rol “Tutor” o “Estudiante”
    And Completa los demás campos obligatorios
    Then El sistema debe guardar el rol seleccionado junto con los datos del usuario

  Scenario: Acceso a funcionalidades según rol
    Given Que el usuario ha completado su registro con un rol definido
    When Inicia sesión correctamente
    Then El sistema debe mostrarle funcionalidades correspondientes a su rol (como buscar tutorías o crear tutorías)