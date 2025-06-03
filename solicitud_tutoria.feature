Feature: Solicitud de tutoría
  Como estudiante,
  Quiero poder seleccionar un horario disponible e iniciar una solicitud de tutoría,
  Para coordinar directamente con el tutor y agendar la sesión.

  Scenario: Envío de solicitud y redirección a WhatsApp
    Given Que el estudiante ha iniciado sesión
    And Se encuentra en la página de una tutoría publicada
    When Selecciona un horario disponible
    And Hace clic en el botón “Solicitar tutoría”
    Then El sistema debe registrar la solicitud
    And Redirigir al estudiante a WhatsApp Web con un mensaje preescrito al tutor

  Scenario: Notificación en panel del tutor
    Given Que el estudiante ha enviado una solicitud
    And El tutor accede a su panel de control
    Then Debe ver una notificación de nueva solicitud con los datos del estudiante y el horario seleccionado
