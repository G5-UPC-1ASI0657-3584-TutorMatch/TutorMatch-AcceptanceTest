Feature: Endpoint para obtener lista de tutorías
  Como desarrollador backend,
  Quiero proporcionar un endpoint para listar todas las tutorías disponibles
  Para que los estudiantes puedan explorarlas desde la plataforma

  Scenario: Listado exitoso de tutorías
    Given Que el usuario está autenticado
    When Realiza una solicitud GET a /api/v1/tutorings
    Then El sistema debe responder con un código 200 (OK)
    And Retornar un arreglo con todas las tutorías publicadas

  Scenario: Filtro por tutor específico
    Given Que el usuario está autenticado
    When Realiza una solicitud GET a /api/v1/tutorings?tutorId=3
    Then El sistema debe responder con un código 200 (OK)
    And Retornar solo las tutorías creadas por el tutor con ID 3