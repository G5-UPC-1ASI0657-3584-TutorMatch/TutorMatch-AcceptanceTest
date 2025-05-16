Feature: Publicación de tutoría por parte del tutor
  Como tutor registrado,
  Quiero poder crear una publicación de tutoría con todos los detalles necesarios
  Para atraer estudiantes interesados en mis servicios

  Scenario: Creación de publicación de tutoría
    Given Que el tutor ha iniciado sesión correctamente
    And Se encuentra en la página de publicación de tutoría
    When Llena los campos requeridos como nombre del curso, descripción, costo, imagen, contenido de aprendizaje y calificación
    And Hace clic en el botón “Publicar”
    Then El sistema debe guardar la tutoría y confirmar la creación con un mensaje visible

  Scenario: Visualización de la tutoría en los resultados de búsqueda
    Given Que el tutor ya ha publicado una tutoría
    When Un estudiante realiza una búsqueda relacionada
    Then La tutoría debe aparecer en los resultados con toda la información ingresada