Feature: Endpoint para Eliminar Publicación de Tutoría
  Como Developer,
  Quiero implementar un endpoint que permita a los tutores eliminar su publicación de tutoría,
  Para gestionar sus servicios disponibles en la plataforma.

  Scenario: Eliminación exitosa de tutoría
    Given Que el tutor está autenticado
    When Realiza una solicitud DELETE a "/api/v1/tutorings/{tutoringId}"
    Then La respuesta debe ser 204 No Content
    And La tutoría debe eliminarse de la base de datos

  Scenario: Intentar eliminar tutoría inexistente
    Given Que el tutor está autenticado
    When Realiza una solicitud DELETE a "/api/v1/tutorings/{tutoringId}" con un ID inválido
    Then La respuesta debe ser 404 Not Found
    And El cuerpo debe incluir un mensaje indicando que la tutoría no fue encontrada
