Feature: Compatibilidad multiplataforma
  Como usuario de TutorMatch,
  Quiero que la plataforma funcione correctamente en diversos dispositivos y navegadores
  Para poder acceder a las tutorías sin importar desde dónde me conecte

  Scenario: Acceso desde múltiples dispositivos
    Given Que el usuario accede a la plataforma desde una PC, móvil o tablet
    When Navega por la interfaz
    Then La experiencia debe ser fluida y los elementos deben adaptarse al tamaño del dispositivo

  Scenario: Compatibilidad con distintos navegadores
    Given Que el usuario accede desde navegadores como Chrome, Firefox o Safari
    When Interactúa con las funcionalidades principales
    Then Todo debe funcionar correctamente sin errores de visualización o funcionamiento