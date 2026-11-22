# language: es
@EP-05 @HU-18
Característica: Alerta de tecnologías en obsolescencia
  Como estudiante autodidacta
  Quiero recibir una alerta en mi SkillTree cuando una tecnología de mi ruta presente una disminución crítica en la demanda
  Para evaluar si debo reemplazarla por una herramienta emergente

  Antecedentes:
    Dado que el estudiante tiene un SkillTree generado

  @AT-18-01
  Escenario: Alerta de obsolescencia por regla
    Dado que el nodo "AngularJS" de la ruta contiene una tecnología cuya demanda cayó más del 60% durante 3 meses seguidos en vacantes activas
    Cuando el usuario ingresa a su SkillTree
    Entonces el sistema marca el nodo "AngularJS" con una advertencia roja
    Y sugiere la tecnología sustituta emergente:
      | tecnología en obsolescencia | sustituta sugerida |
      | AngularJS                   | Angular            |

  @AT-18-02 @extra
  Esquema del escenario: Aplicación de la regla de demanda (valores límite)
    Dado que la demanda de la tecnología del nodo "AngularJS" cayó <caida>% durante <meses> meses consecutivos
    Cuando el usuario ingresa a su SkillTree
    Entonces el nodo "AngularJS" <resultado>

    # La regla es ">60% durante 3 meses consecutivos": 60% exacto y 2 meses no activan la alerta.
    Ejemplos:
      | caida | meses | resultado                           |
      | 61    | 3     | se marca con advertencia roja       |
      | 60    | 3     | no se marca con advertencia roja    |
      | 61    | 2     | no se marca con advertencia roja    |
      | 59    | 3     | no se marca con advertencia roja    |
