<html>
  <head>
    <title>Registro</title>
      
    <meta name='layout' content='main' />
    
  </head>

  <body>
  <style>
      body {
        background-image: url("../assets/feo4.jpg");
         background-size: cover;
      }
      
    </style>
    <div class='navbar-fixed' >       
      <nav style="background:rgb(136,14,79,0.8)">           
        <a href='#' class="brand-logo left truncate"><img height="40" width="40" src="../assets/control.png"><b>Play Live</b></a>
      </nav>
    </div>
    <br/>
    <br/>
    <div class="container">
    <g:form id="register" name="register" action="register">
      <div class="row" >
        <div class="col s12 m8 offset-m2 z-depth  white-text" style="background:rgb(136,14,79,0.5)">
        <br/>
          <center>
            <img height="100" width="100" src="../assets/control.png"> <h4>Regístrate</h4>
          </center>
          <div class="divider"></div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m11 input-field">
            <input class="white-text" id="nick" name="nick" type="text">
            <label for="nick">Usuario</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" id="nombres" name="nombres" type="text">
            <label for="nombres">Nombre(s)</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" id="apellidoP" name="apellidoP" type="text">
            <label for="apellidoP">Apellido Paterno</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" id="apellidoM" name="apellidoM" type="text">
            <label for="apellidoM">Apellido Materno</label>
          </div>       
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" id="celular" name="celular" type="text">
            <label for="celular">Celular</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/key.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" id="password" name="password" type="password">
            <label for="password">Contraseña</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/key.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" id="contra" name="contra" type="password">
            <label for="contra">Repetir contraseña</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/email.png">
          </div>
          <div class="col s10 input-field">
            <input class="white-text" id="email" name="email" type="text">
            <label for="email">Email</label>
          </div>
          <div class="col s12 input-field" >
            <a class="col s6 offset-s3 btn purple darken-4 waves-effect waves-light"  onclick="document.getElementById('register').submit()">Regístrarse
              <i class="material-icons right">send</i>
            </a>
          </div>
          <br/>
        </div>
        <br/>
      </div>
     
      <!--<h5>Juegos</h5>
        <div class="row z-depth card-panel">
          <div class="col s12 m6 l4 input-field z-depth">
            <i class="material-icons prefix">account_circle</i>
            <input id="nickName" name="nickName" type="text">
            <label for="nickName">Nickname</label>
          </div>
          
          <div class="input-field col s6 m5">
            <select class="icons" id="game" name="game" onchange="displayGameOptions()">
                <option value="" disabled selected>Seleccione...</option>
                <option class="left" value="lol" data-icon="../assets/lol.png" value="lol">League of Legends</option>
                <option class="left" value="fortnite"data-icon="../assets/fortnite.png">Fortnite</option>
            </select>
            <label for="game">Juego</label>
          </div>
          
          <div id="gameInfo" 6class="row">
            <div class="input-field col s6 m5">
              <input type="number" name="nivel" id="nivel" />
              </select>
              <label for="nivel">Nivel</label>
            </div>
            <div class="input-field col s6 m5">
              <select class="icons" id="division" name="division">
                  <option value="" selected>Seleccione...</option>
                  <optgroup label="Bronze">
                    <option class="left" value="bronze5">Bronze V</option>
                    <option class="left" value="bronze4">Bronze IV</option>
                    <option class="left" value="bronze3">Bronze III</option>
                    <option class="left" value="bronze2">Bronze II</option>
                    <option class="left" value="bronze1">Bronze I</option>
                  </optgroup>
                  <optgroup label="Plata">
                    <option class="left" value="plata5">Plata V</option>
                    <option class="left" value="plata4">Plata IV</option>
                    <option class="left" value="plata3">Plata III</option>
                    <option class="left" value="plata2">Plata II</option>
                    <option class="left" value="plata1">Plata I</option>
                  </optgroup>
                  <optgroup label="Oro">
                    <option class="left" value="oro5">Oro V</option>
                    <option class="left" value="oro4">Oro IV</option>
                    <option class="left" value="oro3">Oro III</option>
                    <option class="left" value="oro2">Oro II</option>
                    <option class="left" value="oro1">Oro I</option>
                  </optgroup>
                  <optgroup label="Diamante">
                    <option class="left" value="oro5">Diamante V</option>
                    <option class="left" value="oro4">Diamante IV</option>
                    <option class="left" value="oro3">Diamante III</option>
                    <option class="left" value="oro2">Diamante II</option>
                    <option class="left" value="oro4">Diamante I</option>
                  </optgroup>
                  <optgroup label="High Elo">
                    <option class="left" value="maestro">Maestro</option>
                    <option class="left" value="retador">Retador</option>
                  </optgroup>

              </select>
              <label for="division">Division</label>
            </div>
          </div>
          <div class="input-field col s4">
            <a class="btn-small waves-effect waves-light red">Agregar Juego<i class="material-icons left">add</i></a>
          </div>
        </div>-->
    </g:form>
    </div>
  <script type="text/javascript">
        $(document).ready(function(){
          $('select').formSelect();
          $('#gameInfo').hide();
        });
        function displayGameOptions(){
          switch( $("#game").val() ) {
            case "lol":

            break;
            case "fortnite":
            break;

          }
        }
    </script>
  </body>
  
</html>