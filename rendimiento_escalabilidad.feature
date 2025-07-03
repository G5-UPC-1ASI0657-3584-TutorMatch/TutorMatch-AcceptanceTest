Feature: Rendimiento y escalabilidad de la plataforma
  Como administrador del sistema
  Quiero que TutorMatch mantenga un rendimiento óptimo y escalable
  Para asegurar una experiencia fluida incluso con un alto volumen de usuarios

  Scenario: Evaluación del rendimiento bajo carga creciente
    Given Que el sistema está operativo con usuarios activos
    When Se ejecuta una prueba de carga simulando múltiples usuarios concurrentes
    Then El sistema debe mantener tiempos de respuesta aceptables
    And No debe presentarse caída de servicios ni errores críticos

  Scenario: Escalabilidad horizontal ante aumento de demanda
    Given Que se detectan cuellos de botella durante las pruebas de carga
    When Se agregan instancias adicionales o balanceadores de carga
    Then La plataforma debe distribuir eficientemente la carga
    And Continuar operando con normalidad bajo el nuevo volumen
