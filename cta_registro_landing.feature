Feature: Botones de llamada a la acción en la landing page
  Como visitante de la plataforma,
  Quiero ver botones claros de llamada a la acción (CTA)
  Para registrarme fácilmente como estudiante o tutor

  Scenario: Visualización de botones de CTA
    Given Que el visitante accede a la landing page de TutorMatch
    When Navega por la sección principal
    Then Debe ver botones destacados como "Registrarse como estudiante" y "Registrarse como tutor"

  Scenario: Redirección al formulario de registro
    Given Que el visitante hace clic en un botón de CTA
    When Selecciona registrarse como tutor o estudiante
    Then El sistema debe redirigirlo al formulario de registro correspondiente