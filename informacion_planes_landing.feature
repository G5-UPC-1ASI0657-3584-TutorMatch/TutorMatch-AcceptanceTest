Feature: Visualización de planes de suscripción en la landing page
  Como visitante de la plataforma
  Quiero conocer los planes de suscripción disponibles para los tutores
  Para entender sus opciones y beneficios antes de registrarme

  Scenario: Visualización general de los planes disponibles
    Given El visitante accede a la landing page pública
    When Se desplaza hasta la sección "Planes de suscripción"
    Then Debe visualizar una tarjeta para cada plan disponible
    And Cada tarjeta debe mostrar el nombre, precio y beneficios principales del plan

  Scenario: Comparación detallada de planes
    Given El visitante desea comparar los planes antes de registrarse
    When Hace clic en el botón “Comparar planes”
    Then El sistema debe mostrar una tabla comparativa
    And La tabla debe incluir características como: duración, beneficios, soporte y precio

  Scenario: Acceso directo al registro desde la vista de planes
    Given El visitante está revisando los planes en la landing page
    When Hace clic en “Comenzar” o “Registrarse” desde un plan específico
    Then Debe ser redirigido al formulario de registro con el plan preseleccionado
