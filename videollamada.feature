Feature: Inicio de videollamada entre tutor y estudiante
  Como tutor o estudiante,
  Quiero poder iniciar una videollamada desde el chat
  Para tener una sesión de tutoría en tiempo real

  Scenario: Iniciar videollamada desde el chat
    Given Que ambos usuarios están en una conversación activa
    When Uno de ellos presiona el botón “Iniciar videollamada”
    Then El sistema debe abrir una sala de videollamada integrada
    And Notificar al otro usuario que se ha iniciado una llamada

  Scenario: Unirse a videollamada desde invitación
    Given Que el tutor ha iniciado una videollamada
    When El estudiante recibe la invitación
    Then Debe aparecer un botón para unirse a la llamada en tiempo real

  Scenario: Finalizar la videollamada manualmente
    Given Que la videollamada está en curso
    When Uno de los participantes presiona “Finalizar llamada”
    Then La sala debe cerrarse automáticamente para ambos usuarios

  Scenario: Finalización automática por inactividad
    Given Que la videollamada está activa sin interacción por más de X minutos
    When Se detecta inactividad prolongada
    Then El sistema debe finalizar automáticamente la llamada
    And Notificar a los usuarios que la sesión fue cerrada por inactividad