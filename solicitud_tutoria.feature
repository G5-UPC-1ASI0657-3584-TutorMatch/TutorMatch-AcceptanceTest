Feature: Solicitud de tutoría
  Como estudiante,
  Quiero poder seleccionar un horario disponible e iniciar una solicitud de tutoría
  Para coordinar directamente con el tutor y agendar la sesión

  Scenario: Envío de solicitud y mensaje al tutor
    Given Que el estudiante ha iniciado sesión
    And Se encuentra en la página de una tutoría publicada
    When Selecciona un horario disponible
    And Hace clic en el botón “Solicitar tutoría”
    Then El sistema debe registrar la solicitud
    And Enviar un mensaje preescrito al tutor por WhatsApp para coordinar el pago

  Scenario: Notificación al tutor
    Given Que el estudiante ha enviado una solicitud
    When El tutor accede a su panel de control
    Then Debe ver una notificación de nueva solicitud con los datos del estudiante y el horario elegido