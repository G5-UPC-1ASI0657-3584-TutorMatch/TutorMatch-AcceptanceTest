Feature: Historial de archivos compartidos en el chat
  Como tutor o estudiante,
  Quiero acceder a un historial de archivos enviados y recibidos
  Para encontrar fácilmente materiales compartidos durante las tutorías

  Scenario: Acceso a historial desde el chat
    Given Que el usuario está en una conversación activa
    When Hace clic en la pestaña “Archivos”
    Then Debe visualizar una lista de todos los archivos compartidos en esa conversación

  Scenario: Descarga de archivo desde el historial
    Given Que el usuario visualiza el historial de archivos
    When Selecciona uno de los archivos listados
    Then El sistema debe iniciar la descarga del archivo seleccionado