Feature: Envío y recepción de mensajes en tiempo real

  Como estudiante o tutor,
  Quiero enviar y recibir mensajes instantáneamente
  Para mantener una conversación fluida durante la tutoría

  Scenario: Envío de mensaje de texto
    Given que el usuario está en una conversación abierta
    When escribe un mensaje y presiona "Enviar"
    Then el mensaje debe mostrarse de inmediato en la vista de chat

  Scenario: Recepción de nuevo mensaje en tiempo real
    Given que el usuario está en el chat activo
    When la otra parte envía un mensaje
    Then el nuevo mensaje debe aparecer automáticamente sin necesidad de recargar