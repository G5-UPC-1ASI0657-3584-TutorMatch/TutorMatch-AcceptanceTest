Feature: Endpoint para eliminar una tutoría
  Como desarrollador backend,
  Quiero permitir que los tutores eliminen sus publicaciones de tutoría
  Para que puedan gestionar el contenido que ofrecen

  Scenario: Eliminación exitosa de tutoría
    Given Que el tutor está autenticado y autorizado
    When Realiza una solicitud DELETE a /api/v1/tutorings/{tutoringId} con un ID válido
    Then El sistema debe responder con un código 204 (No Content)
    And El recurso debe eliminarse de la base de datos

  Scenario: Error por tutoría no encontrada
    Given Que el tutor está autenticado
    When Realiza una solicitud DELETE con un ID que no existe
    Then El sistema debe responder con un código 404 (Not Found)
    And Mostrar un mensaje que indique que la tutoría no fue encontrada