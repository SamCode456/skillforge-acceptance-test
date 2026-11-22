# language: es
@EP-05 @HU-19
Característica: Registro de progreso por nodo completado
  Como estudiante autodidacta
  Quiero marcar manualmente un nodo como "Completado"
  Para llevar un registro actualizado de mi avance

  Antecedentes:
    Dado que el estudiante tiene un SkillTree con los siguientes nodos:
      | nodo       | prerrequisito |
      | HTML       | ninguno       |
      | JavaScript | HTML          |

  @AT-19-01
  Escenario: Marcado de nodo
    Dado que el estudiante está en el panel de detalle del nodo activo "HTML"
    Cuando presiona "Marcar como Completado"
    Entonces la plataforma actualiza el estado del nodo "HTML" a "Completado"
    Y cambia su color a verde en la ruta

  @AT-19-02 @extra
  Escenario: Completar un nodo habilita el siguiente
    Dado que el nodo "JavaScript" está bloqueado por el prerrequisito "HTML"
    Cuando el estudiante marca "HTML" como "Completado"
    Entonces el sistema muestra el nodo "JavaScript" activo y accesible
