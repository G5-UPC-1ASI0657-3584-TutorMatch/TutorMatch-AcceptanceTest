Feature: Envío de archivos durante la tutoría
  Como tutor o estudiante,
  Quiero poder enviar archivos en el chat,
  Para compartir materiales de estudio fácilmente.

  Scenario: Enviar PDF o imagen
    Given Que el usuario está en un chat activo
    When Hace clic en “Adjuntar archivo” y selecciona un archivo válido (PDF o imagen)
    Then El archivo debe enviarse correctamente
    And Debe mostrarse como descargable en la conversación

  Scenario: Restricción por formato inválido
    Given Que el usuario selecciona un archivo no permitido
    When Intenta enviarlo
    Then El sistema debe mostrar un mensaje de error indicando el formato inválido
