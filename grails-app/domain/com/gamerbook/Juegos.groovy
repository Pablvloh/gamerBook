package com.gamerbook

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true)
class Juegos{
    String nombre
    String gamerTag
    String rango

    static constraints = {
        rango nullable:true
    }
}