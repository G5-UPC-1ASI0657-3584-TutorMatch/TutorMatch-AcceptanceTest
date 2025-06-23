Feature: Endpoint para Obtener Publicaciones de Tutorías
  Como Developer,
  Quiero implementar un endpoint en la API RESTful que permita obtener una lista de publicaciones de tutorías,
  Para que los estudiantes puedan explorar las opciones disponibles.

  Scenario: Obtención exitosa de tutorías
    Given Que el usuario está autenticado
    When Realiza una solicitud GET a "/api/v1/tutorings"
    Then La respuesta debe ser 200 OK
    And El cuerpo debe contener una lista de publicaciones de tutorías

  Scenario: Filtrar tutorías por tutor
    Given Que el usuario está autenticado
    When Realiza una solicitud GET a "/api/v1/tutorings?tutorId=1"
    Then La respuesta debe ser 200 OK
    And La lista debe mostrar solo las tutorías del tutor con ID 1
