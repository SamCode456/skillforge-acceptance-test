@EP-05 @USN-02 @rendimiento @no-funcional
Feature: Tiempo de respuesta de la plataforma
  Como estudiante universitario
  Quiero que la plataforma cargue el SkillTree y las vacantes en menos de 3 segundos
  Para navegar fluidamente sin latencia

  Background:
    Given un usuario navega por las pantallas principales

  @AT-USN02-01 @normal
  Scenario Outline: Carga rápida bajo tráfico normal
    When solicita la visualización de "<pantalla>"
    Then el tiempo de renderizado no supera los <max_segundos> segundos

    # El criterio del informe cubre el SkillTree; las vacantes se incluyen por el texto de la historia
    Examples:
      | pantalla  | max_segundos |
      | SkillTree | 3            |
      | Vacantes  | 3            |

  @AT-USN02-02 @alternativo
  Scenario Outline: Valores límite del tiempo de renderizado
    When se mide el tiempo de renderizado del SkillTree en <tiempo_medido> segundos
    Then la prueba se considera "<resultado>"

    # Límite: no supera los 3 segundos
    Examples:
      | tiempo_medido | resultado |
      | 2.9           | aprobada  |
      | 3.0           | aprobada  |
      | 3.1           | fallida   |
