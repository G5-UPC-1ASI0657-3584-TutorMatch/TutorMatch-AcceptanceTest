Feature: Envío de archivos en el chat
  Como tutor o estudiante,
  Quiero poder enviar archivos durante una conversación
  Para compartir materiales de estudio o recursos relevantes

  Scenario: Enviar archivo PDF o imagen
    Given Que el usuario está en un chat activo
    When Hace clic en “Adjuntar archivo” y selecciona un PDF o imagen
    Then El archivo debe enviarse y mostrarse como descargable en la conversación

  Scenario: Error por formato de archivo no permitido
    Given Que el usuario está en un chat
    When Intenta subir un archivo con un formato no soportado
    Then El sistema debe rechazar el archivo
    And Mostrar un mensaje de error indicando el formato inválido