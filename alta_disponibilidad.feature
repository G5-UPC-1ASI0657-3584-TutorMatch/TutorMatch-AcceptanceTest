Feature: Alta disponibilidad del sistema
  Como administrador de la plataforma
  Quiero que el sistema mantenga alta disponibilidad incluso ante fallos o mantenimientos
  Para garantizar el acceso continuo de los usuarios al servicio

  Scenario: Activación automática del plan de recuperación ante fallos
    Given Que ocurre una falla técnica inesperada en el sistema
    When El sistema de monitoreo detecta el incidente
    Then Se debe activar automáticamente el plan de contingencia
    And Restaurar el servicio en el menor tiempo posible

  Scenario: Ejecución de mantenimiento sin interrupción completa
    Given Que se ha programado un mantenimiento del sistema
    When El mantenimiento se inicia
    Then El sistema debe permanecer parcialmente disponible
    And Debe mostrar mensajes informativos sobre las funciones temporalmente inhabilitadas
