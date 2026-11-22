@EP-05 @HU-19
Feature: Registro de progreso por nodo completado
  Como estudiante autodidacta
  Quiero marcar manualmente un nodo como "Completado"
  Para llevar un registro actualizado de mi avance

  Background:
    # Nodos de ejemplo estimados para la meta Backend Developer
    Given el estudiante tiene un SkillTree con los siguientes nodos:
      | nodo                        | prerrequisito                                     |
      | Fundamentos de programación | ninguno                                           |
      | Bases de datos SQL          | Fundamentos de programación                       |
      | APIs REST                   | Fundamentos de programación, Bases de datos SQL   |

  @AT-19-01 @normal
  Scenario: Marcado de nodo
    Given el estudiante está en el panel de detalle del nodo activo "Fundamentos de programación"
    When presiona "Marcar como Completado"
    Then la plataforma actualiza el estado del nodo "Fundamentos de programación" a "Completado"
    And cambia su color a verde en la ruta

  @AT-19-02 @alternativo
  Scenario: Completar un nodo habilita el siguiente
    Given el nodo "Bases de datos SQL" está bloqueado por el prerrequisito "Fundamentos de programación"
    When el estudiante marca "Fundamentos de programación" como "Completado"
    Then el sistema muestra el nodo "Bases de datos SQL" activo y accesible

  @AT-19-03 @alternativo
  Scenario: Completar nodos en secuencia
    Given el estudiante completó el nodo "Fundamentos de programación"
    When marca el nodo "Bases de datos SQL" como "Completado"
    Then los nodos se muestran así en la ruta:
      | nodo                        | estado     | color |
      | Fundamentos de programación | Completado | verde |
      | Bases de datos SQL          | Completado | verde |
