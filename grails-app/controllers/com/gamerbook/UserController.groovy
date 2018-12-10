package com.gamerbook
import com.gamerbook.*
class UserController {

    def springSecurityService

    def index() { 
        def userCurrent = springSecurityService.currentUser
        def user = Perfil.findByNick( userCurrent.username )
        def statistics=null
        def friends = ['Luis Castillo','Angel Gonzalez','Christian Gonzalez']
        def games = user?.juegos
        def topGames = ['League of legends','Fortnite','OverWatch']
        
        [user:user,statistics:statistics,friends:friends,games:games, top:topGames]
    }
    def edit(){
        def userCurrent = springSecurityService.currentUser
        def user = Perfil.findByNick( userCurrent.username )
        [user:user]
    }

    synchronized def confirmEdit(){

    }

    synchronized def createPost(String content){
        def userCurrent = springSecurityService.currentUser
        def user = Perfil.findByNick( userCurrent.username )
        def post = new Post()
        if(content){
            post.fecha = new Date()
            post.content = content
            post.save()
            user.posts << post 
            user.save()
        }   
        showPost(user)
    }

    def addGame(){
        def userCurrent = springSecurityService.currentUser
        def user = Perfil.findByNick( userCurrent.username )
        def juego = new Juegos()
        juego.gamerTag= params.gamerTag
        juego.rango= params.rango
        juego.nombre = params.game
        user.juegos << juego
        user.save()
        [model:[]]
        redirect(url:"/user/index")
    }

    private void showPost( user ){
        user.posts?.sort{it?.fecha}
        user.posts?.reverse(true)
        render(template:"content",model:[content:user.posts])
    }
}
class UserCommand{
        String nombres
        String apellidoP
        String apellidoM
        String celular
        String email

        static constraints = {
            nombres blank:false, nullable:false
            apellidoP blank:false, nullable:false
            apellidoM blank:false, nullable:false
            celular blank:false, nullable:false, size: 10..10
            email blank:false, nullable:false
        }
}
class gameCommand{

}