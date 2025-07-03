Feature: Optimización de la landing page para móviles
  Como visitante desde un celular,
  Quiero una interfaz optimizada para móviles
  Para navegar cómodamente sin errores de visualización

  Scenario: Scroll fluido y sin desbordes
    Given Que el usuario accede desde un dispositivo móvil
    When Desliza la pantalla hacia abajo
    Then No deben aparecer barras dobles ni contenido cortado

  Scenario: Botones táctiles accesibles
    Given Que el visitante visualiza botones o enlaces en móvil
    When Toca los elementos de la interfaz
    Then Todos deben estar correctamente dimensionados y funcionales
    