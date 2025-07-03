Feature: Visualización de funcionalidades clave en la landing page
  Como visitante de la plataforma
  Quiero ver claramente las funcionalidades principales que ofrece TutorMatch
  Para comprender el valor del servicio antes de registrarme

  Scenario: Visualización de funcionalidades destacadas
    Given Que el visitante accede a la landing page
    When Navega hasta la sección de funcionalidades
    Then Debe visualizar tarjetas o bloques con descripciones de funciones como tutorías, chat, videollamada y gestión de archivos

  Scenario: Acceso a información detallada sobre una funcionalidad
    Given Que el visitante desea obtener más información sobre una funcionalidad
    When Hace clic en una de las tarjetas destacadas
    Then El sistema debe expandir o mostrar un panel con información detallada de la función seleccionada
