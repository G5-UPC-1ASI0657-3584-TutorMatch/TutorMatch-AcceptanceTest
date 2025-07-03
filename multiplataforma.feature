Feature: Compatibilidad multiplataforma
  Como usuario de TutorMatch
  Quiero que la plataforma funcione correctamente en diversos dispositivos y navegadores
  Para acceder a las tutorías desde cualquier entorno sin problemas

  Scenario: Acceso fluido desde múltiples dispositivos
    Given Que el usuario accede a la plataforma desde una PC, un móvil o una tablet
    When Navega por la interfaz y utiliza las funcionalidades
    Then Todos los elementos deben adaptarse correctamente al tamaño del dispositivo
    And La experiencia de usuario debe mantenerse fluida y sin interrupciones

  Scenario: Funcionamiento correcto en distintos navegadores
    Given Que el usuario accede desde navegadores como Chrome, Firefox o Safari
    When Interactúa con las funcionalidades principales de la plataforma
    Then La visualización y el comportamiento deben ser consistentes y sin errores
