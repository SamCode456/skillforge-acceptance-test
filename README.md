# SkillForge – Acceptance Tests (Gherkin)

Pruebas de aceptación en Gherkin (español) de SkillForge – Nexus Skills.
Curso 1ASI0786 Ingeniería de Requisitos – Capítulo IV: Validation.

## Estructura

```
features/
  ep05-skilltree/     HU-15 a HU-19 (EP-05: Generación y Navegación del SkillTree)
  no-funcionales/     USN-01, USN-02 (y las USN del otro integrante)
```

(La épica y las USN del otro integrante se agregan en sus propias carpetas.)

## Trazabilidad (tests ↔ historias)

| ID test | Historia | Archivo .feature | Escenario | Estado |
| --- | --- | --- | --- | --- |
| AT-15-01 | HU-15 | HU-15-generacion-skilltree.feature | Generación de la ruta | Pendiente |
| AT-15-02 | HU-15 | HU-15-generacion-skilltree.feature | Intento de acceso sin diagnóstico | Pendiente |
| AT-16-01 | HU-16 | HU-16-bloqueo-nodos-prerrequisitos.feature | Nodo disponible | Pendiente |
| AT-16-02 | HU-16 | HU-16-bloqueo-nodos-prerrequisitos.feature | Nodo bloqueado | Pendiente |
| AT-17-01 | HU-17 | HU-17-recursos-educativos.feature | Despliegue de recursos de un nodo desbloqueado | Pendiente |
| AT-17-02 | HU-17 | HU-17-recursos-educativos.feature | Un nodo bloqueado no despliega recursos (extra) | Pendiente |
| AT-18-01 | HU-18 | HU-18-alerta-obsolescencia.feature | Alerta de obsolescencia por regla | Pendiente |
| AT-18-02 | HU-18 | HU-18-alerta-obsolescencia.feature | Aplicación de la regla de demanda, valores límite (extra) | Pendiente |
| AT-19-01 | HU-19 | HU-19-registro-progreso-nodo.feature | Marcado de un nodo como completado | Pendiente |
| AT-19-02 | HU-19 | HU-19-registro-progreso-nodo.feature | Completar un nodo habilita el siguiente nodo (extra) | Pendiente |
| AT-USN01-01 | USN-01 | USN-01-cifrado-credenciales.feature | Cifrado de contraseñas en reposo | Pendiente |
| AT-USN01-02 | USN-01 | USN-01-cifrado-credenciales.feature | Dos usuarios con la misma contraseña no comparten hash (extra) | Pendiente |
| AT-USN01-03 | USN-01 | USN-01-cifrado-credenciales.feature | La información sensible no se almacena en texto plano (extra) | Pendiente |
| AT-USN02-01 | USN-02 | USN-02-tiempo-respuesta.feature | Carga rápida de pantallas principales bajo tráfico normal | Pendiente |
| AT-USN02-02 | USN-02 | USN-02-tiempo-respuesta.feature | Evaluación del tiempo medido frente al límite (extra) | Pendiente |

Estado: *Pendiente* = diseñado, aún no implementado/ejecutado.
Los escenarios marcados `@extra` amplían los criterios de la sección 3.4.
