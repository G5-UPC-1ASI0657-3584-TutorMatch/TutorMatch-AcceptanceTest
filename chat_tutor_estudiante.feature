Feature: Chat entre tutor y estudiante
  Como tutor o estudiante,
  Quiero poder iniciar y mantener conversaciones en tiempo real
  Para coordinar tutorías y resolver dudas directamente desde la plataforma

  Scenario: Inicio de chat desde una publicación de tutoría
    Given El estudiante visualiza una tutoría publicada
    When Hace clic en el botón "Iniciar chat"
    Then El sistema debe abrir una ventana de conversación con ese tutor

  Scenario: Envío y recepción de mensajes en tiempo real
    Given Que el chat está activo entre tutor y estudiante
    When Uno de los usuarios envía un mensaje de texto
    Then El otro usuario debe recibirlo instantáneamente en su pantalla

  Scenario: Acceso a conversación previa desde historial
    Given Que el usuario ya tiene conversaciones anteriores
    When Accede a su sección de mensajes
    Then Debe poder continuar cualquiera de sus conversaciones previas