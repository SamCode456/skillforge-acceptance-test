@EP-05 @HU-15
Feature: Generación automática del SkillTree personalizado
  Como estudiante autodidacta
  Quiero que el sistema genere automáticamente un "SkillTree" basado en mis brechas técnicas
  Para tener una ruta de aprendizaje personalizada

  @AT-15-01 @normal
  Scenario: Generación de ruta
    # Brechas de ejemplo para la meta Backend Developer
    Given el estudiante completó su diagnóstico técnico con las siguientes brechas:
      | tecnología         | clasificación |
      | Bases de datos SQL | Brecha        |
      | APIs REST          | Brecha        |
    When presiona "Generar mi Ruta"
    Then el sistema crea y despliega el árbol de habilidades interactivo en la pantalla principal
    And el árbol incluye un nodo por cada brecha del diagnóstico

  @AT-15-02 @excepcional
  Scenario: Intento sin diagnóstico
    Given el estudiante no ha realizado el autodiagnóstico
    When intenta acceder a "Mi SkillTree"
    Then el sistema muestra el mensaje "Debes completar tu diagnóstico para generar tu ruta de aprendizaje"

  @AT-15-03 @alternativo
  Scenario Outline: El árbol refleja la cantidad de brechas
    Given el estudiante completó su diagnóstico técnico con <brechas> brechas identificadas
    When presiona "Generar mi Ruta"
    Then el árbol de habilidades incluye <nodos> nodos

    Examples:
      | brechas | nodos |
      | 1       | 1     |
      | 3       | 3     |
