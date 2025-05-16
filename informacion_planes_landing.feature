Feature: Visualización de planes de suscripción en la landing page
  Como visitante de la plataforma,
  Quiero conocer los planes de suscripción disponibles para los tutores
  Para entender las opciones y beneficios antes de registrarme

  Scenario: Mostrar información general de los planes
    Given Que el visitante se encuentra en la landing page
    When Navega hasta la sección de suscripciones
    Then Debe visualizar un resumen de cada plan con sus precios y beneficios

  Scenario: Comparación de planes
    Given Que el visitante quiere comparar opciones
    When Hace clic en “Comparar planes”
    Then El sistema debe mostrar una tabla con las características de cada plan