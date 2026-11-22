@EP-05 @HU-17
Feature: Consulta de recursos educativos recomendados
  Como estudiante autodidacta
  Quiero hacer clic en un nodo específico de mi SkillTree
  Para visualizar enlaces a recursos recomendados asociados a esa tecnología

  Background:
    # Nodos de ejemplo estimados para la meta Backend Developer
    Given el estudiante tiene un SkillTree con los siguientes nodos:
      | nodo                        | prerrequisito                                     |
      | Fundamentos de programación | ninguno                                           |
      | Bases de datos SQL          | Fundamentos de programación                       |
      | APIs REST                   | Fundamentos de programación, Bases de datos SQL   |

  @AT-17-01 @normal
  Scenario: Despliegue de recursos
    Given el estudiante interactúa con el nodo desbloqueado "Fundamentos de programación"
    When hace clic sobre él
    Then el sistema despliega un panel lateral con enlaces directos a:
      | tipo de recurso  |
      | Documentación    |
      | Videos           |
      | Cursos gratuitos |

  @AT-17-02 @excepcional
  Scenario: Un nodo bloqueado no despliega recursos
    Given el estudiante no ha completado los prerrequisitos de "APIs REST"
    When hace clic sobre el nodo "APIs REST"
    Then el sistema no despliega el panel lateral de recursos
    And muestra el mensaje "Debes completar los temas anteriores para desbloquear esta habilidad"

  @AT-17-03 @alternativo
  Scenario Outline: Recursos en cada nodo desbloqueado
    Given el nodo "<nodo>" está desbloqueado
    When el estudiante hace clic sobre él
    Then el panel lateral incluye enlaces a documentación, videos y cursos gratuitos

    Examples:
      | nodo                        |
      | Fundamentos de programación |
      | Bases de datos SQL          |
