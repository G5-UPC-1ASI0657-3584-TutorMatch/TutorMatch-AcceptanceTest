Feature: Visualización de funcionalidades clave en la landing page
  Como visitante de la plataforma,
  Quiero ver claramente las funcionalidades principales que ofrece TutorMatch
  Para comprender el valor del servicio antes de registrarme

  Scenario: Mostrar funcionalidades destacadas
    Given Que el visitante está en la landing page
    When Navega por la sección de funcionalidades
    Then Debe ver tarjetas o bloques que describan funciones como tutorías, chat, videollamada y gestión de archivos

  Scenario: Acceso a información detallada
    Given Que el visitante desea saber más de una funcionalidad
    When Hace clic en una de las funcionalidades destacadas
    Then El sistema debe expandir o mostrar información detallada sobre esa función