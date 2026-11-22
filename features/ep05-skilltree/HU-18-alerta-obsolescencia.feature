# language: es
@EP-05 @HU-18
Característica: Alerta de tecnologías en obsolescencia
  Como estudiante autodidacta
  Quiero recibir una alerta en mi SkillTree cuando una tecnología de mi ruta presente una disminución crítica en la demanda del mercado laboral (>60% en 3 meses consecutivos)
  Para evaluar si debo reemplazarla por una herramienta emergente

  @AT-18-01
  Escenario: Alerta de obsolescencia por regla
    Dado que un nodo de la ruta contiene una tecnología cuya demanda cayó más del 60% durante 3 meses seguidos en vacantes activas
    Cuando el usuario ingresa a su SkillTree
    Entonces el sistema marca el nodo con una advertencia roja
    Y sugiere la tecnología sustituta emergente

  @AT-18-02 @extra
  Esquema del escenario: Valores límite de la regla de demanda
    Dado que la demanda de la tecnología de un nodo de la ruta cayó <caida>% durante <meses> meses consecutivos en vacantes activas
    Cuando el usuario ingresa a su SkillTree
    Entonces el nodo <resultado>

    # Regla del criterio: más del 60% durante 3 meses consecutivos
    Ejemplos:
      | caida | meses | resultado                        |
      | 61    | 3     | se marca con advertencia roja    |
      | 60    | 3     | no se marca con advertencia roja |
      | 61    | 2     | no se marca con advertencia roja |
      | 59    | 3     | no se marca con advertencia roja |
