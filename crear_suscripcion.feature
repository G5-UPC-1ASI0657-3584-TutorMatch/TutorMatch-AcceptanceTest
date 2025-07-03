Feature: Gestión de suscripciones para tutores
  Como tutor
  Quiero poder adquirir y gestionar un plan de suscripción desde la plataforma
  Para acceder a funciones premium que mejoren mi visibilidad y servicios

  Scenario: Selección y pago exitoso de un plan de suscripción
    Given El tutor ha iniciado sesión correctamente
    And Se encuentra en la sección "Planes de suscripción"
    When Selecciona un plan disponible
    And Realiza el pago de forma exitosa
    Then El sistema debe registrar la suscripción del tutor
    And Mostrar una confirmación del pago
    And Habilitar el acceso inmediato a funcionalidades premium

  Scenario: Actualización del estado de la suscripción del tutor
    Given El sistema ha confirmado un pago exitoso
    When Se actualiza el estado de la cuenta del tutor
    Then Debe reflejar el nuevo plan contratado
    And Mostrar el tiempo restante o la fecha de renovación automática si aplica

  Scenario: Visualización de beneficios del plan activo
    Given El tutor tiene una suscripción activa
    When Accede a su perfil o sección de suscripción
    Then Debe visualizar los beneficios disponibles según su plan
    And Mostrar la opción de renovar, cambiar o cancelar el plan
