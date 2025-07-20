Feature: Confirmación de turnos en tiempo real
  Para reducir las ausencias sin aviso
  Como paciente
  Quiero ver los turnos disponibles y confirmar mi asistencia 24 horas antes
  De manera que se aprovechen los cupos médicos adecuadamente

Scenario Outline: Camino feliz (Happy path)
  Given el paciente accede al módulo de reserva
  And hay al menos un turno disponible para la especialidad "<especialidad>"
  When elige el turno en "<fecha_hora>" y confirma su asistencia
  Then la cita queda con estado "Confirmada"
  And se muestra mensaje "Cita confirmada para <fecha_hora>"

  Examples:
    | especialidad       | fecha_hora         |
    | Pediatría          | 2025-08-12 09:00   |
    | Medicina General   | 2025-08-13 11:30   |

Scenario Outline: Camino infeliz (Unhappy path)
  Given el paciente accede al módulo de reserva
  And selecciona la especialidad "<especialidad>" y turno en "<fecha_hora>"
  When intenta confirmar la cita y ocurre un error técnico
  Then se muestra mensaje "No se pudo confirmar. Intente más tarde"
  And la cita queda en estado "Pendiente"
  And se crea un ticket de error automático para soporte

  Examples:
    | especialidad       | fecha_hora         |
    | Ginecología        | 2025-08-14 15:00   |
    | Dermatología       | 2025-08-15 16:30   |

Scenario Outline: Ruta alternativa (Alternative path)
  Given el paciente ya tiene una cita confirmada para la fecha "<fecha_hora>"
  When faltan menos de 24 horas y no ha confirmado su asistencia
  Then el sistema envía un recordatorio de confirmación
  And si pasan 4 horas sin respuesta, el estado cambia a "Requiere confirmación adicional"
  And se notifica a un administrador para hacer seguimiento

  Examples:
    | fecha_hora         |
    | 2025-08-16 10:00   |
    | 2025-08-17 14:00   |
