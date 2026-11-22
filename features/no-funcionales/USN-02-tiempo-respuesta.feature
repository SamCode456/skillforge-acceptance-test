# language: es
@EP-05 @USN-02 @rendimiento @no-funcional
Característica: Tiempo de respuesta de la plataforma
  Como estudiante universitario
  Quiero que la plataforma cargue el SkillTree y las vacantes en menos de 3 segundos
  Para navegar fluidamente sin latencia

  Antecedentes:
    # "Tráfico normal" definido como 100 usuarios concurrentes (valor propuesto; acordar con el equipo)
    Dado que el sistema opera con 100 usuarios concurrentes navegando

  @AT-USN02-01
  Esquema del escenario: Carga rápida de pantallas principales bajo tráfico normal
    Cuando un usuario solicita la visualización de "<pantalla>"
    Entonces el tiempo de renderizado no supera los <max_segundos> segundos

    Ejemplos:
      | pantalla          | max_segundos |
      | SkillTree         | 3            |
      | Panel de vacantes | 3            |

  @AT-USN02-02 @extra
  Esquema del escenario: Evaluación del tiempo medido frente al límite
    Cuando se mide el tiempo de renderizado del SkillTree en <tiempo_medido> segundos
    Entonces la prueba se considera "<resultado>"

    # Valores límite alrededor de 3 segundos
    Ejemplos:
      | tiempo_medido | resultado |
      | 2.9           | aprobada  |
      | 3.0           | aprobada  |
      | 3.1           | fallida   |
