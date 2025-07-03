Feature: Descarga de archivos compartidos en la tutoría
  Como estudiante o tutor,
  Quiero recibir y descargar materiales enviados durante la sesión
  Para acceder fácilmente a los recursos de estudio

  Scenario: Notificación de nuevo archivo recibido
    Given Que uno de los usuarios envía un archivo
    When El otro usuario lo recibe
    Then El sistema debe mostrar una notificación en el chat

  Scenario: Botón de descarga funcional
    Given Que el archivo aparece en el chat
    When El usuario presiona el botón “Descargar”
    Then El archivo debe comenzar a descargarse automáticamente