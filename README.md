# SkillForge – Acceptance Tests

Pruebas de aceptación de SkillForge – Nexus Skills, escritas en Gherkin.
Curso 1ASI0786 Ingeniería de Requisitos – Capítulo IV: Validation.

## Estructura

```
features/
  ep05-skilltree/     HU-15 a HU-19 (EP-05: Generación y Navegación del SkillTree)
  no-funcionales/     USN-01, USN-02
```

## Tests y User Stories relacionadas

| ID test | Historia | Tipo | Escenario |
| --- | --- | --- | --- |
| AT-15-01 | HU-15 | Normal | Generación de ruta |
| AT-15-02 | HU-15 | Excepcional | Intento sin diagnóstico |
| AT-15-03 | HU-15 | Alternativo | El árbol refleja la cantidad de brechas |
| AT-16-01 | HU-16 | Normal | Nodo disponible |
| AT-16-02 | HU-16 | Excepcional | Nodo bloqueado |
| AT-16-03 | HU-16 | Alternativo | Nodo con varios prerrequisitos |
| AT-17-01 | HU-17 | Normal | Despliegue de recursos |
| AT-17-02 | HU-17 | Excepcional | Un nodo bloqueado no despliega recursos |
| AT-17-03 | HU-17 | Alternativo | Recursos en cada nodo desbloqueado |
| AT-18-01 | HU-18 | Normal | Alerta de obsolescencia por regla |
| AT-18-02 | HU-18 | Alternativo (valores límite) | Valores límite de la regla de demanda |
| AT-19-01 | HU-19 | Normal | Marcado de nodo |
| AT-19-02 | HU-19 | Alternativo | Completar un nodo habilita el siguiente |
| AT-19-03 | HU-19 | Alternativo | Completar nodos en secuencia |
| AT-USN01-01 | USN-01 | Normal | Cifrado de datos en reposo |
| AT-USN01-02 | USN-01 | Alternativo | La información sensible no se almacena en texto plano |
| AT-USN02-01 | USN-02 | Normal | Carga rápida bajo tráfico normal |
| AT-USN02-02 | USN-02 | Alternativo (valores límite) | Valores límite del tiempo de renderizado |
