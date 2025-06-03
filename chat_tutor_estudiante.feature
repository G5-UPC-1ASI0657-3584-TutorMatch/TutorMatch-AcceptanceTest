Feature: Chat entre tutor y estudiante
  Como tutor o estudiante,
  Quiero iniciar y mantener conversaciones en tiempo real desde la plataforma,
  Para coordinar tutorías, resolver dudas y mantener contacto fluido.

  Scenario: Inicio de chat desde una publicación de tutoría
    Given Que el estudiante ha iniciado sesión
    And Se encuentra visualizando una tutoría publicada
    When Hace clic en el botón "Iniciar chat"
    Then El sistema debe abrir una nueva ventana de conversación asociada al tutor

  Scenario: Envío y recepción de mensajes en tiempo real
    Given Que el chat está activo entre tutor y estudiante
    And Ambos usuarios están conectados
    When Uno de los usuarios escribe y envía un mensaje de texto
    Then El mensaje debe aparecer instantáneamente en la pantalla del otro usuario

  Scenario: Acceso al historial de conversaciones previas
    Given Que el usuario ya ha tenido conversaciones anteriores
    When Accede a la sección de mensajes desde su panel
    Then El sistema debe mostrar la lista de conversaciones anteriores
    And El usuario puede reabrir y continuar cualquier conversación existente
