<html>
  <head>
    <meta name='layout' content='main' />
    <title>Login</title>
  </head>

  <body>
  <style>
      body {
        background-image: url("../assets/login.png");
         background-size: cover;
      }
      
  </style>
     <div class="hide-on-small-only">
            <div class="navbar-fixed">
                <nav class="pink darken-1">
                    <div class="nav-wrapper">
                        <a href="#"class="brand-logo center"><b>P L A Y <img width="80" height="80" src="../assets/control.png"> L I V E</b></a>
                        <ul id="nav-mobile" class="right">
                            <li><a href="<g:createLink controller='logout' action='index'/>"> <img width="23" height="23" src="../assets/logoff.png"></a></li>
                            <li><a href='<g:createLink controller='user' action='edit' target='_self' ></g:createLink>' > <img width="23" height="23" src="../assets/user.png"></a></li>
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
                        <a href="#">&nbsp;&nbsp;<img width="30" height="30" src="../assets/control.png">&nbsp;<b>P L A Y   L I V E</b></a>
                        <ul id="nav-mobile" class="right">
                            <li><a href="<g:createLink controller='logout' action='index'/>"> <img width="23" height="23" src="../assets/logoff.png"></a></li>
                            <li><a href='<g:createLink controller='user' action='edit' target='_self' ></g:createLink>' > <img width="23" height="23" src="../assets/user.png"></a></li>
                        </ul>
                    </div>
                </nav>
            </div>            
        </div>
    <div class='hide-on-small-only'>
    </div> 
	<div class="container">
        <div class="row" style="margin-top:5%;">
            <div class="col s12 m10 l6 xl6 offset-m1 offset-l3 offset-xl3 z-depth white-text" style="background:rgb(136,14,79,0.5)">   
                <p><center><img height="100" width="100" src="../assets/control.png"><h3 style="margin-top=0%;"><b>Play Live</b></h3><center></p>
                <br class='hide-on-small-only'>
                <div class="divider"></div>
                <br/>
                <form action='${postUrl}' method='POST' id='loginForm' class="login-form" autocomplete='on'>

                    <div class="row">
                        <div class="input-field col s2 m1 ">
                            <img height="30" width="30" src="../assets/user.png">
                        </div>
                        <div class="input-field col s10 white-text">
                            <input type='text' class='white-text text_' name='username' id='username' />
                            <label for="username" data-error="wrong" data-success="right"><g:message code="loginpage.username.label"/></label>
                        </div>
                        
                    </div>
                    <div class="row">
                         <div class="input-field col s2 m1 ">
                                <img height="30" width="30" src="../assets/key.png">
                        </div>
                        <div class="input-field col s10 m10">
                            <input type='password' class='white-text text_' name='password' id='password' />
                            <label for="password" data-error="wrong" data-success="right"><g:message code="loginpage.password.label"/></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s4 offset-s7">
                            <p>
                            <label>
                                <input type="checkbox" name='remember-me' id="remember-me"/>
                                <span><g:message code="loginpage.rememberme.label"/></span>
                            </label>
                            </p>
                        </div>    
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <button class="col s10 offset-s1 btn pink darken-2 waves-effect waves-light" type="submit">Iniciar Sesión
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>				
                </form>
                <g:if test="${params.login_error}">
                <div class="row">
                    <div class="col s10 offset-s1 errors">
                        <g:message code="springSecurity.errors.login.fail"/>
                    </div>
                </div>
                </g:if>
            </div>
        </div>

    </div>
    
    <script type="text/javascript">
        $(document).ready(function(){
            $('footer').css('position','fixed')
            $('footer').css('bottom','-23.1%')
            $('footer').css('height','30%')
            $('footer').css('opacity','0.8')
        });
    </script>
    
  </body>
    
</html>