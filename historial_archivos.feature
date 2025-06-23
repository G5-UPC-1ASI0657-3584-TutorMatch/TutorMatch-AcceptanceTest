Feature: Visualización del historial de archivos en el chat

  Como tutor o estudiante,
  Quiero acceder a un historial de archivos enviados y recibidos,
  Para poder consultar y descargar fácilmente los materiales compartidos durante las tutorías.

  Scenario: Acceder al historial desde una conversación activa
    Given que el usuario se encuentra en una conversación activa con un tutor o estudiante
    When hace clic en la pestaña "Archivos"
    Then el sistema debe mostrar una lista con todos los archivos compartidos en dicha conversación

  Scenario: Descargar un archivo desde el historial
    Given que el usuario está visualizando el historial de archivos
    When selecciona uno de los archivos listados
    Then el sistema debe iniciar la descarga del archivo seleccionado
