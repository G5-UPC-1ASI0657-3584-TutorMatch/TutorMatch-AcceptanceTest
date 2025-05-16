Feature: Rendimiento y escalabilidad de la plataforma
  Como administrador del sistema,
  Quiero que TutorMatch mantenga un rendimiento óptimo
  Para asegurar una experiencia fluida incluso con muchos usuarios conectados

  Scenario: Rendimiento bajo carga creciente de usuarios
    Given Que el número de usuarios y sesiones aumenta progresivamente
    When Se realiza una prueba de carga simulando usuarios concurrentes
    Then El sistema debe responder sin caídas ni tiempos de espera elevados

  Scenario: Escalabilidad horizontal del sistema
    Given Que se identifican cuellos de botella en el rendimiento
    When Se añaden recursos (instancias, servidores, balanceadores)
    Then La plataforma debe seguir funcionando correctamente
    And Adaptarse automáticamente al nuevo volumen de uso