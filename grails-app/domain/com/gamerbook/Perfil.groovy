package com.gamerbook

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true)
class Perfil{
    String nick
    String nombres
    String apellidoP
    String apellidoM
    String celular
    String password
    String email
    List<Post> posts
    List<Juegos> juegos
    static constraints = {
        nick blank:false, nullable:false
        nombres blank:false, nullable:false
        apellidoP blank:false, nullable:false
        apellidoM blank:false, nullable:false
        celular blank:false, nullable:false, size: 10..10
        password blank:false, nullable:false
        email blank:false, nullable:false
    }
}