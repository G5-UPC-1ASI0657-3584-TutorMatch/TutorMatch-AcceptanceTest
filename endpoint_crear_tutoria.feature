Feature: Endpoint para Crear Publicación de Tutoría
  Como Developer,
  Quiero implementar un endpoint en la API RESTful que permita a los tutores crear una publicación de tutoría con los detalles necesarios,
  Para que estos datos se registren en la plataforma y sean accesibles para los estudiantes.

  Scenario: Creación exitosa de publicación de tutoría
    Given Que el tutor está autenticado y tiene los permisos necesarios
    When Realiza una solicitud POST a "/api/v1/tutorings" con los datos completos
    Then La respuesta debe ser 201 Created
    And El cuerpo de la respuesta debe incluir los detalles de la publicación creada

  Scenario: Error por datos incompletos
    Given Que el tutor está autenticado
    When Realiza una solicitud POST a "/api/v1/tutorings" con un cuerpo incompleto
    Then La respuesta debe ser 400 Bad Request
    And El mensaje debe indicar que faltan datos requeridos
