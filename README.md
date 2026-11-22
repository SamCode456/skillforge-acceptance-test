# SkillForge – Acceptance Tests (Gherkin)

Pruebas de aceptación en Gherkin de SkillForge – Nexus Skills.
Curso 1ASI0786 Ingeniería de Requisitos – Capítulo IV: Validation.

## Estructura

```
features/
  ep05-skilltree/     EP-05: Generación y Navegación del SkillTree
  no-funcionales/     USN-01, USN-02
```

## Tests y User Stories relacionadas

| ID test | Historia | Archivo .feature | Escenario |
| --- | --- | --- | --- |
| AT-15-01 | HU-15 | HU-15-generacion-skilltree.feature | Generación de la ruta |
| AT-15-02 | HU-15 | HU-15-generacion-skilltree.feature | Intento de acceso sin diagnóstico |
| AT-16-01 | HU-16 | HU-16-bloqueo-nodos-prerrequisitos.feature | Nodo disponible |
| AT-16-02 | HU-16 | HU-16-bloqueo-nodos-prerrequisitos.feature | Nodo bloqueado |
| AT-17-01 | HU-17 | HU-17-recursos-educativos.feature | Despliegue de recursos de un nodo desbloqueado |
| AT-17-02 | HU-17 | HU-17-recursos-educativos.feature | Un nodo bloqueado no despliega recursos |
| AT-18-01 | HU-18 | HU-18-alerta-obsolescencia.feature | Alerta de obsolescencia por regla |
| AT-18-02 | HU-18 | HU-18-alerta-obsolescencia.feature | Aplicación de la regla de demanda (valores límite) |
| AT-19-01 | HU-19 | HU-19-registro-progreso-nodo.feature | Marcado de un nodo como completado |
| AT-19-02 | HU-19 | HU-19-registro-progreso-nodo.feature | Completar un nodo habilita el siguiente nodo |
| AT-USN01-01 | USN-01 | USN-01-cifrado-credenciales.feature | Cifrado de contraseñas en reposo |
| AT-USN01-02 | USN-01 | USN-01-cifrado-credenciales.feature | Dos usuarios con la misma contraseña no comparten hash |
| AT-USN01-03 | USN-01 | USN-01-cifrado-credenciales.feature | La información sensible no se almacena en texto plano |
| AT-USN02-01 | USN-02 | USN-02-tiempo-respuesta.feature | Carga rápida de pantallas principales bajo tráfico normal |
| AT-USN02-02 | USN-02 | USN-02-tiempo-respuesta.feature | Evaluación del tiempo medido frente al límite |
