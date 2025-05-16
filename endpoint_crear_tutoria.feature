Feature: Endpoint para crear una publicación de tutoría
  Como desarrollador backend,
  Quiero implementar un endpoint para que los tutores puedan registrar nuevas tutorías
  Para que estén disponibles para los estudiantes en la plataforma

  Scenario: Creación exitosa de tutoría
    Given Que el tutor está autenticado y autorizado
    When Realiza una solicitud POST a /api/v1/tutorings con todos los campos requeridos
    Then El sistema debe responder con un código 201 (Created)
    And Retornar los datos de la tutoría creada

  Scenario: Error por datos incompletos
    Given Que el tutor está autenticado
    When Realiza una solicitud POST con campos obligatorios faltantes
    Then El sistema debe responder con un código 400 (Bad Request)
    And Mostrar un mensaje de error detallando los campos faltantes