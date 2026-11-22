# language: es
@EP-01 @USN-01 @seguridad @no-funcional
Característica: Cifrado y seguridad de credenciales
  Como administrador del sistema
  Quiero que las contraseñas e información sensible se almacenen cifradas mediante algoritmos robustos (BCrypt/AES-256)
  Para garantizar la protección de datos personales

  @AT-USN01-01
  Escenario: Cifrado de datos en reposo
    Dado que un nuevo usuario completa el registro con los siguientes datos:
      | campo      | valor                   |
      | correo     | estudiante@correo.com   |
      | contraseña | ContraseñaDePrueba123   |
    Cuando el sistema guarda sus datos en la base de datos
    Entonces la contraseña se almacena como un hash no reversible
    Y la contraseña almacenada es distinta de "ContraseñaDePrueba123"

  @AT-USN01-02 @extra
  Escenario: La información sensible no se almacena en texto plano
    Dado que un nuevo usuario completa el registro con sus datos personales y académicos
    Cuando el sistema guarda sus datos en la base de datos
    Entonces la información sensible se almacena cifrada
    Y no puede leerse en texto plano desde la base de datos
