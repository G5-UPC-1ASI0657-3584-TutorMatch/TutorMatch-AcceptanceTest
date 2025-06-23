Feature: Finalización de videollamada entre tutor y estudiante

  Como tutor o estudiante,
  Quiero poder finalizar una videollamada desde la plataforma
  Para cerrar correctamente la sesión cuando esta concluya

  Scenario: Finalizar la videollamada manualmente
    Given Que la videollamada está en curso
    When Uno de los participantes presiona “Finalizar llamada”
    Then La sala debe cerrarse automáticamente para ambos usuarios
    And Notificar que la sesión ha terminado

  Scenario: Finalización automática por inactividad
    Given Que la videollamada está activa sin interacción por más de X minutos
    When Se detecta inactividad prolongada
    Then El sistema debe finalizar automáticamente la llamada
    And Mostrar mensaje indicando que fue cerrada por inactividad