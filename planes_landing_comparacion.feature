Feature: Comparación de planes de suscripción en la landing page
  Como visitante de la plataforma,
  Quiero ver una tabla comparativa de planes de suscripción
  Para entender claramente sus diferencias y tomar una decisión informada

  Scenario: Visualización de tabla de comparación
    Given Que el visitante accede a la landing page
    When Hace clic en “Comparar planes”
    Then Debe aparecer una tabla que compare características, precios y beneficios de cada plan

  Scenario: Información detallada por plan
    Given Que el visitante observa la tabla de comparación
    When Selecciona un plan específico
    Then El sistema debe mostrar una sección expandida con información adicional