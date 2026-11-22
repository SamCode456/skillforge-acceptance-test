@EP-05 @HU-16
Feature: Bloqueo de nodos por prerrequisitos técnicos
  Como estudiante autodidacta
  Quiero visualizar los nodos del SkillTree bloqueados si no he completado los temas previos
  Para evitar saltarme bases tecnológicas

  Background:
    # Nodos de ejemplo estimados para la meta Backend Developer
    Given el estudiante tiene un SkillTree con los siguientes nodos:
      | nodo                        | prerrequisito                                     |
      | Fundamentos de programación | ninguno                                           |
      | Bases de datos SQL          | Fundamentos de programación                       |
      | APIs REST                   | Fundamentos de programación, Bases de datos SQL   |

  @AT-16-01 @normal
  Scenario: Nodo disponible
    Given el estudiante completó el tema previo "Fundamentos de programación"
    When consulta el siguiente nodo "Bases de datos SQL" en su SkillTree
    Then el sistema muestra el nodo "Bases de datos SQL" activo y accesible

  @AT-16-02 @excepcional
  Scenario: Nodo bloqueado
    Given el estudiante no ha completado los prerrequisitos anteriores de "Bases de datos SQL"
    When hace clic en el nodo de nivel superior "Bases de datos SQL"
    Then el sistema lo mantiene en gris
    And muestra el mensaje "Debes completar los temas anteriores para desbloquear esta habilidad"

  @AT-16-03 @alternativo
  Scenario Outline: Nodo con varios prerrequisitos
    Given el nodo "APIs REST" tiene como prerrequisitos "Fundamentos de programación" y "Bases de datos SQL"
    And "Fundamentos de programación" está <estado_fundamentos>
    And "Bases de datos SQL" está <estado_sql>
    When el estudiante consulta el nodo "APIs REST"
    Then el sistema lo muestra <resultado>

    Examples:
      | estado_fundamentos | estado_sql | resultado           |
      | completado         | completado | activo y accesible  |
      | completado         | pendiente  | en gris (bloqueado) |
      | pendiente          | pendiente  | en gris (bloqueado) |
