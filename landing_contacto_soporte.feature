Feature: Información de contacto y soporte en la landing page
  Como visitante de la plataforma,
  Quiero encontrar fácilmente cómo contactar al equipo de soporte
  Para resolver dudas antes de registrarme

  Scenario: Visualización de información de contacto
    Given Que el visitante está en el footer de la landing page
    When Revisa el contenido inferior
    Then Debe ver el correo electrónico de soporte y enlaces a ayuda

  Scenario: Enlace a soporte visible
    Given Que el visitante navega por la landing
    When Llega al final o sección de soporte
    Then Debe ver un enlace funcional a la página o sección de ayuda