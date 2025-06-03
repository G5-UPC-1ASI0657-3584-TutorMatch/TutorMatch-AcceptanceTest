Feature: Actualización de perfil
  Como usuario registrado,
  Quiero poder editar y actualizar mi perfil en cualquier momento
  Para mantener mi información personal y académica actualizada

  Scenario: Actualización exitosa del perfil
    Given El usuario ha iniciado sesión en la plataforma
    And Se encuentra en la sección de edición de perfil
    When Modifica los campos de ciclo, cursos o descripción y guarda los cambios
    Then El sistema debe guardar la información correctamente
    And Mostrar un mensaje de confirmación de actualización

  Scenario: Visualización de la información actualizada
    Given Que el perfil del usuario ha sido actualizado previamente
    When Otro usuario visualiza ese perfil
    Then Debe ver la información más reciente registrada por el usuario
