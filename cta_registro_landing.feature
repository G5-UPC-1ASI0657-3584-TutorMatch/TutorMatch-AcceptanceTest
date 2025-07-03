Feature: Botones de llamada a la acción en la landing page
  Como visitante de la plataforma
  Quiero ver botones claros de llamada a la acción (CTA)
  Para registrarme fácilmente como estudiante o tutor

  Scenario: Visualización de botones de registro
    Given Que el visitante accede a la landing page de TutorMatch
    When Navega por la sección principal de bienvenida
    Then Debe visualizar botones destacados como "Registrarse como estudiante" y "Registrarse como tutor"

  Scenario: Redirección al formulario de registro adecuado
    Given Que el visitante hace clic en uno de los botones de CTA
    When Selecciona registrarse como estudiante o tutor
    Then El sistema debe redirigirlo al formulario de registro correspondiente según su elección
