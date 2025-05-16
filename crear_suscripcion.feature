Feature: Gestión de suscripciones para tutores
  Como tutor,
  Quiero poder adquirir un plan de suscripción desde la plataforma
  Para acceder a funciones premium que mejoren mi visibilidad y servicios

  Scenario: Selección y pago de plan de suscripción
    Given Que el tutor está autenticado y en la sección de "Planes"
    When Selecciona un plan y realiza el pago correctamente
    Then El sistema debe registrar la suscripción
    And Confirmar el acceso a funcionalidades premium

  Scenario: Actualización del estado de suscripción
    Given Que el tutor ha realizado un pago válido
    When Se procesa el pago
    Then El estado de su cuenta debe reflejar el nuevo plan contratado
    And Mostrarse el tiempo restante o renovación automática si aplica