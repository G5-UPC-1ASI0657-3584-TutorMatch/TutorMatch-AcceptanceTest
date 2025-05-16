Feature: Endpoint para actualizar perfil del usuario
  Como desarrollador backend,
  Quiero proporcionar un endpoint que permita actualizar el perfil del usuario
  Para que los tutores y estudiantes mantengan su información al día

  Scenario: Actualización exitosa del perfil
    Given Que el usuario está autenticado y autorizado
    When Realiza una solicitud PUT a /api/v1/users/{id} con datos válidos
    Then El sistema debe devolver un código 200 (OK)
    And Retornar los datos actualizados del usuario

  Scenario: Error por ID inexistente
    Given Que el usuario está autenticado
    When Realiza una solicitud PUT a /api/v1/users/{id} con un ID inexistente
    Then El sistema debe devolver un código 404 (Not Found)
    And Mostrar un mensaje indicando que el perfil no fue encontrado