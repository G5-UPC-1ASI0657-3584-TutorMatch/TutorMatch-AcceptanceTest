Feature: Endpoint para actualizar perfil del usuario
  Como desarrollador backend
  Quiero proporcionar un endpoint que permita actualizar el perfil del usuario
  Para que los tutores y estudiantes mantengan su información actualizada

  Scenario: Actualización exitosa del perfil
    Given Que el usuario está autenticado y autorizado
    When Realiza una solicitud PUT a /api/v1/users/{id} con datos válidos en el cuerpo
    Then El sistema debe responder con un código de estado 200 (OK)
    And Debe retornar los datos actualizados del perfil del usuario

  Scenario: Error por ID de usuario inexistente
    Given Que el usuario está autenticado
    When Realiza una solicitud PUT a /api/v1/users/{id} utilizando un ID inexistente
    Then El sistema debe responder con un código de estado 404 (Not Found)
    And Debe mostrar un mensaje indicando que el perfil no fue encontrado
