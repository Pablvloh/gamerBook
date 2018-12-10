<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Play Live</title>
</head>
<body>
     <div class="hide-on-small-only">
            <div class="navbar-fixed">
                <nav class="pink darken-1">
                    <div class="nav-wrapper">
                        <a href="#"class="brand-logo center"><b>P L A Y <img width="80" height="80" src="../assets/control.png"> L I V E</b></a>
                        <ul id="nav-mobile" class="right">
                            <li><a href='<g:createLink controller='register' action='createNew' target='_self' ></g:createLink>'> Registrarse</a></li>
                            <li><a href='<g:createLink controller='user' action='index' target='_self' ></g:createLink>' >Iniciar Sesion</a></li>
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
                            <li><a href='<g:createLink controller='register' action='createNew' target='_self' ></g:createLink>'> Registrarse</a></li>
                            <li><a href='<g:createLink controller='user' action='index' target='_self' ></g:createLink>' >Iniciar Sesion</a></li>
                        </ul>
                    </div>
                </nav>
            </div>            
        </div>
    
    <div class="parallax-container">
        <div class="parallax"><img  width="100" src="/assets/portada.png"></div>
    </div>
    <br/>
    <br/>
    <div class="container">
        
        <div class="row">
            <div class="col s12 m8 offset-m2">
            <center>
                <g:img dir="images" file="control.png" width="70%" height="70%"/>
            </center>
            </div>
        </div>
    </div>
   <div class="parallax-container">
        <div class="parallax"><img height="800" src="/assets/esports.jpg"></div>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.parallax').parallax();
        });
    </script>
</body>
</html>
