Feature: Historial de archivos en el chat de tutoría
  Como usuario,
  Quiero ver un historial de los archivos enviados
  Para acceder fácilmente a los materiales compartidos

  Scenario: Acceso al historial desde el chat
    Given Que el usuario está en una conversación activa
    When Abre la pestaña “Archivos”
    Then Debe ver una lista ordenada de los archivos enviados

  Scenario: Descarga desde historial
    Given Que el usuario ve la lista de archivos
    When Selecciona uno
    Then El sistema debe iniciar la descarga del archivo seleccionado