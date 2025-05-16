Feature: Soporte técnico eficiente
  Como tutor o estudiante,
  Quiero poder solicitar ayuda técnica desde la plataforma
  Para resolver problemas que interfieran con el uso del sistema

  Scenario: Solicitud de soporte técnico
    Given Que el usuario está experimentando un problema
    When Accede a la sección de soporte y envía una solicitud describiendo el problema
    Then El sistema debe registrar el caso
    And Confirmar la recepción de la solicitud con un mensaje automático

  Scenario: Tiempo de respuesta según plan
    Given Que el usuario ha enviado una solicitud de soporte
    When El sistema detecta el plan de suscripción del usuario
    Then La respuesta debe ser enviada dentro del tiempo correspondiente al plan contratado

  Scenario: Confirmación de resolución
    Given Que el equipo técnico ha respondido la solicitud
    When El usuario revisa la respuesta
    Then Debe poder marcar el problema como resuelto
    And Ver un resumen de la solución proporcionada