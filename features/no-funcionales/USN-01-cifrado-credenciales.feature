@EP-01 @USN-01 @seguridad @no-funcional
Feature: Cifrado y seguridad de credenciales
  Como administrador del sistema
  Quiero que las contraseñas e información sensible se almacenen cifradas mediante algoritmos robustos (BCrypt/AES-256)
  Para garantizar la protección de datos personales

  @AT-USN01-01 @normal
  Scenario: Cifrado de datos en reposo
    Given un nuevo usuario completa el registro con los siguientes datos:
      | campo      | valor                 |
      | correo     | estudiante@correo.com |
      | contraseña | ContraseñaDePrueba123 |
    When el sistema guarda sus datos en la base de datos
    Then la contraseña se almacena como un hash no reversible
    And la contraseña almacenada es distinta de "ContraseñaDePrueba123"

  @AT-USN01-02 @alternativo
  Scenario: La información sensible no se almacena en texto plano
    Given un nuevo usuario completa el registro con sus datos personales y académicos
    When el sistema guarda sus datos en la base de datos
    Then la información sensible se almacena cifrada
    And no puede leerse en texto plano desde la base de datos
