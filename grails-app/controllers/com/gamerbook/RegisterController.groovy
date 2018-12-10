package com.gamerbook
import com.gamerbook.*
class RegisterController {

    def index() { 
        redirect( action:'createNew', params:params )
    }

    def createNew(){
        
    }

    synchronized def register(PersonCommand pc)
    {
        if ( pc.hasErrors() ){
            println "ai errorsistos"
            render (view:'createNew', model:[pc:pc.errors])
        }
        
        try{
            generatePerfil( pc )
            def usuarioRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
            def user = new User( username: pc.nick, password: pc.password, enabled: true).save(failOnError: true)
            UserRole.create (user,usuarioRole)
        }catch(Exception e){
            e.printStackTrace()
        }
        
        redirect( url:"/" )
    }

    private void generatePerfil( pc ){
        def perfil= new Perfil()
        perfil.nombres = pc.nombres
        perfil.apellidoP = pc.apellidoP
        perfil.apellidoM = pc.apellidoM
        perfil.celular = pc.celular
        perfil.password = pc.password
        perfil.email = pc.email
        perfil.nick = pc.nick
        perfil.save()
    }
    
}
class PersonCommand{
        String nick
        String nombres
        String apellidoP
        String apellidoM
        String celular
        String password
        String email
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