Feature: Visualización de horarios disponibles del tutor
  Como estudiante interesado en una tutoría,
  Quiero ver los horarios disponibles que ofrece el tutor
  Para elegir el que más se acomode a mi disponibilidad

  Scenario: Ver horarios en la publicación de la tutoría
    Given Que el estudiante está en la página de detalle de una tutoría publicada
    When Navega a la sección de horarios
    Then Debe visualizar una lista con los días y horas en los que el tutor está disponible

  Scenario: Selección de horario desde la lista
    Given Que el estudiante visualiza los horarios disponibles
    When Selecciona uno de los horarios listados
    Then El sistema debe marcar ese horario como seleccionado
    And Preparar la solicitud de tutoría con esa opción