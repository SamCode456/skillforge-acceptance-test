# language: es
@EP-05 @HU-19
Característica: Registro de progreso por nodo completado
  Como estudiante autodidacta
  Quiero marcar manualmente un nodo como "Completado"
  Para llevar un registro actualizado de mi avance

  Antecedentes:
    Dado que el estudiante tiene un SkillTree generado

  @AT-19-01
  Escenario: Marcado de un nodo como completado
    Dado que el estudiante está en el panel de detalle del nodo activo "SQL básico"
    Cuando presiona "Marcar como Completado"
    Entonces la plataforma actualiza el estado del nodo "SQL básico" a "Completado"
    Y cambia su color a verde en la ruta

  @AT-19-02 @extra
  Escenario: Completar un nodo habilita el siguiente nodo
    Dado que el nodo "SQL avanzado" está bloqueado por el prerrequisito "SQL básico"
    Cuando el estudiante marca "SQL básico" como "Completado"
    Entonces el sistema muestra el nodo "SQL avanzado" activo y accesible
