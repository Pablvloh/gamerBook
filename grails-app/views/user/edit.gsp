<html>
    <head>
        <meta name='layout' content='main' />
        <title>Editar Perfil</title>
    </head>
    <body>
    <div class="hide-on-small-only">
            <div class="navbar-fixed">
                <nav class="pink darken-1">
                    <div class="nav-wrapper">
                        <a href="/user"class="brand-logo center"><b>P L A Y <img width="80" height="80" src="../assets/control.png"> L I V E</b></a>
                        <ul id="nav-mobile" class="right">
                            <li><a href="<g:createLink controller='logout' action='index'/>"> <img width="23" height="23" src="../assets/logoff.png"></a></li>
                            <li><a href='<g:createLink controller='user' action='index' target='_self' ></g:createLink>' > <img width="23" height="23" src="../assets/user.png"></a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div style="position:fixed;width:100%" class="row pink darken-4 white-text" style="margin-top=150px;">
                <br>
            </div>
        </div>
        <div class="hide-on-med-and-up">
            <div class="navbar-fixed">
                <nav class="pink darken-1">
                    <div class="nav-wrapper">
                        <a href="/user">&nbsp;&nbsp;<img width="30" height="30" src="../assets/control.png">&nbsp;<b>P L A Y   L I V E</b></a>
                        <ul id="nav-mobile" class="right">
                            <li><a href="<g:createLink controller='logout' action='index'/>"> <img width="23" height="23" src="../assets/logoff.png"></a></li>
                            <li><a href='<g:createLink controller='user' action='index' target='_self' ></g:createLink>' > <img width="23" height="23" src="../assets/user.png"></a></li>
                        </ul>
                    </div>
                </nav>
            </div>            
        </div>
    <br/>
    <br/>
    <br/>
    <div class="container">
    <g:form id="register" name="register" action="register">
    <div class="container">
      <div class="row" >
        <div class="col s12 m8 offset-m2 z-depth  white-text" style="background:rgb(136,14,79,0.5)">
        <br/>
          <center>
            <h4>Editar Perfil</h4>
          </center>
          <br/>
          <div class="divider"></div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input value="${user.nombres}" class="white-text" id="nombres" name="nombres" type="text">
            <label for="nombres">Nombre(s)</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input class="white-text" value="${user.apellidoP}" id="apellidoP" name="apellidoP" type="text">
            <label for="apellidoP">Apellido Paterno</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input value="${user.apellidoM}" class="white-text" id="apellidoM" name="apellidoM" type="text">
            <label for="apellidoM">Apellido Materno</label>
          </div>       
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/user.png">
          </div>
          <div class="col s10 m5 input-field">
            <input value="${user.celular}" class="white-text" id="celular" name="celular" type="text">
            <label for="celular">Celular</label>
          </div>
          <div class="col s2 m1 input-field">
            <img height="40" width="40" src="../assets/email.png">
          </div>
          <div class="col s10 m11 input-field">
            <input value="${user.email}" class="white-text" id="email" name="email" type="text">
            <label for="email">Email</label>
          </div>
          <div class="col s12 input-field" >
            <a class="col s6 offset-s3 btn purple darken-4 waves-effect waves-light"  onclick="document.getElementById('register').submit()">Editar
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
    </div>
    </body>
</html>