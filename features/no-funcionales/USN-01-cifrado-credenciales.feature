# language: es
@EP-01 @USN-01 @seguridad @no-funcional
Característica: Cifrado y seguridad de credenciales
  Como administrador del sistema
  Quiero que las contraseñas e información sensible se almacenen cifradas con algoritmos robustos
  Para garantizar la protección de datos personales

  @AT-USN01-01
  Esquema del escenario: Cifrado de contraseñas en reposo
    Dado que un nuevo usuario completa el registro con la contraseña "<contraseña>"
    Cuando el sistema guarda sus datos en la base de datos
    Entonces la contraseña almacenada es un hash no reversible
    Y la contraseña almacenada es distinta de "<contraseña>"

    Ejemplos:
      | contraseña      |
      | Skill#Forge2026 |
      | abc12345        |
      | P@ssw0rd!Larga_y_con_simbolos |

  @AT-USN01-02 @extra
  Escenario: Dos usuarios con la misma contraseña no comparten el mismo hash
    Dado que dos usuarios distintos se registran con la contraseña "Skill#Forge2026"
    Cuando el sistema guarda ambos registros en la base de datos
    Entonces los hashes almacenados de ambos usuarios son diferentes

  @AT-USN01-03 @extra
  Escenario: La información sensible no se almacena en texto plano
    Dado que un nuevo usuario completa el registro con los siguientes datos:
      | campo       | valor              |
      | correo      | usuario@correo.com |
      | universidad | UPC                |
    Cuando el sistema guarda sus datos en la base de datos
    Entonces los campos de información sensible se almacenan cifrados
    Y no pueden leerse en texto plano desde la base de datos
