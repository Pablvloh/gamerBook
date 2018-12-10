package gamerbook
import com.gamerbook.*


class BootStrap {

    def init = { servletContext ->
        def usuarioRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role( authority: 'ROLE_ADMIN').save(failOnError: true )

    	def adminUser = new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)
        	if (!adminUser.authorities.contains(adminRole)) {
            	UserRole.create (adminUser, adminRole)	
        	}

        //ricardo
        def user = new User(
            username:'riklaionel',
            password:'riklaionel',
            enabled:true).save(failOnError:true)


        def juego= new Juegos()
        def lista = []
        juego.nombre='league of legends'
        juego.gamerTag='Riklaionel'
        juego.rango='Platino III'
        //['League of Legends','Grand Theft Auto', 'Marvel vs Capcom']
        lista << juego
        juego = new Juegos()
        juego.nombre='Grand Theft Auto'
        juego.gamerTag='Riklaionel21'
        lista << juego 

        def perfil = new Perfil(
            nick : 'riklaionel',
            nombres : 'Ricardo Ivan',
            apellidoP : 'Castillo',
            apellidoM : 'Oviedo',
            celular : '5531121516',
            password:'riklaionel',
            email : 'riklaionel@hotmail.com',
            juegos: lista
        ).save(failOnError:true)
            UserRole.create (user,usuarioRole)
        //pablo

        def lista2 = []
        juego.nombre='league of legends'
        juego.gamerTag='Fothcrah'
        juego.rango='Platino IV'
        //['League of Legends','Grand Theft Auto', 'Marvel vs Capcom']
        lista2 << juego
        juego = new Juegos()
        juego.nombre='fortnite'
        juego.gamerTag='Zyglrox'
        juego.rango='lvl 99'
        lista2 << juego 
        def pablo = new User(
            username:'fothcrah',
            password:'jester08',
            enabled:true).save(failOnError:true)
        def perfilPablo = new Perfil(
            nick : 'fothcrah',
            nombres : 'Pablo Fernando',
            apellidoP : 'Valadez',
            apellidoM : 'Andrade',
            celular : '5531121516',
            password:'jester08',
            email : 'slayer.ov.gods@gmail.com',
            juegos: lista2
        ).save(failOnError:true)
        UserRole.create (pablo,usuarioRole)
    }
    def destroy = {
    }
}
