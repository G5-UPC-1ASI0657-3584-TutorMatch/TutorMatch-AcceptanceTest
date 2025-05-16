Feature: Alta disponibilidad del sistema
  Como administrador de la plataforma,
  Quiero que el sistema mantenga alta disponibilidad incluso ante fallos o mantenimientos
  Para garantizar que los usuarios puedan acceder al servicio sin interrupciones significativas

  Scenario: Activación de plan de recuperación ante fallos
    Given Que el sistema presenta una falla técnica inesperada
    When Se detecta el fallo por el monitoreo del sistema
    Then Se debe activar el plan de contingencia automáticamente
    And Restaurar el servicio en el menor tiempo posible

  Scenario: Mantenimiento sin interrupción total
    Given Que se ha programado un mantenimiento del sistema
    When El mantenimiento entra en ejecución
    Then El sistema debe seguir disponible parcialmente
    And Mostrar mensajes informativos a los usuarios sobre la operación limitada