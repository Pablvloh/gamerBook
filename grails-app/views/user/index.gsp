<html>
    <head>
        <meta name='layout' content='main' />
        <title>Usuario</title>
    </head>
    <body>
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
    <br/>
    <br/>
    <div class="container">
        <div class="row" >
            <div class="col s12 m4 ">
                <div class="col s12  pink darken-4">
                    
                    <div class="col s12 pink darken-4 flow-text white-text"> 
                        <center>Amigos</center> 
                        
                        <div class="divider"></div>
                        <br> 
                    </div>
                    <ul class= "collection">
                    <g:each in="${friends}">
                        <li class="collection-item avatar pink darken-4">
                            <img class="circle" src="../assets/user.png"> 
                            <span class="title" style="color:white;">${it}</span>
                            <a href="#!" class="secondary-content" style="color:cyan;"><i class="prefix material-icons">web</i> Ver perfil</a>
                        </li>
                    </g:each>
                    </ul>
                    <div class="col s12 white-text flow-text"> 
                        <center>Juegos</center> 
                        
                        <div class="divider"></div>
                        <br>
                    </div>
                    
                    <ul class= "collection">
                    <g:each in="${games}">
                        <li class="collection-item avatar pink darken-4">
                        <g:form id="formGame" action="deleteGame">
                            <img class="circle" src="../assets/${it.nombre}.png"> 
                            <span class="title" style="color:white;">${it.nombre}</span>
                            <input type="hidden" name="game" value="${it.nombre}"/>
                            <br/>
                            <p style="color:white;">gamerTag: ${it.gamerTag} <br/>${it.rango}</p>
                            <a onclick="$(#formGame).submit();" class="secondary-content" style="color:red;"><i class="material-icons">clear</i></a>
                        </g:form>
                        </li>
                    </g:each>
                        <li class="collection-item pink darken-4">
                            <center><a href="#modal1" class="modal-trigger btn-floating btn-large waves-effect waves-light red" style="color:cyan;"><i class="material-icons">add</i>Agregar Juego</a>
                            <p style="color:white;">Agregar Juego</p></center>
                        </li>
                    </ul>
                </div>
            </div>  
            
            <div class="col s12 m4">
                <div class="col s12 white-text">
                    <div class="col s12 pink darken-4 flow-text">
                        <br/>
                        <center><img width="160" class="circle" height="160" src='../assets/${user.nick}.jpg'></center>
                        <center>${user.nombres}</center>
                        <br/>
                    </div>
                    
                    <div class="col s12 pink darken-4 flow-text">
                        
                        <div class="divider"></div>
                        <br>
                        <center>Noticias</center>
                        <br>
                        <div class="slider">
                            <ul class="slides">
                            <li>
                                <img src="../assets/resident.jpg"> <!-- random image -->
                                <div class="caption center-align">
                                <a style="color:white;" href ="https://www.youtube.com/watch?v=E0VkAi-aEL4&fbclid=IwAR17MzY1rwX7_J4fFEa2Lf1weHhsbrNK_iSf9FGN8AH7fbM78DLjy4LkbxQ">
                                    <h3 style="text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><b>¡Once minutos de game play de Resident Evil 2!</b></h3>
                                </a>
                                </div>
                            </li>
                            <li>
                                <img src="../assets/neeko.jpg"> <!-- random image -->
                                <div class="caption center-align">
                                <a style="color:white;" href ="https://www.youtube.com/watch?v=853zlRhTfrI">
                                    <h4 style="text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><b>¡Neeko la nueva campeona de League of Legends, ya disponible!</b></h4>
                                </a>
                                </div>
                            </li>
                            <li>
                                <img src="../assets/smash.jpg"> <!-- random image -->
                                <div class="caption center-align">
                                <a style="color:white;" href ="https://www.xataka.com/analisis/super-smash-bros-ultimate-analisis-entrega-definitiva-tambien-uno-mejores-juegos-ano?fbclid=IwAR0JUm3zksxrawSDa5AWMPW7zwNopf0KobwJuwkJ4lJn9b1MJlRT7LcCSGA">
                                    <h4 style="text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><b>¡Super smash bros ultimate debuta en el primer lugar de ventas en Reino Unido!</b></h4>
                                </a>
                                </div>
                            </li>
                            <li>
                                <img src="../assets/magic.jpg"> <!-- random image -->
                                <div class="caption center-align">
                                <a style="color:white;" href ="https://thegamersports.mundodeportivo.com/esports/cartas-esports/magic-the-gathering-esports/">
                                    <h3 style="text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><b>¡Magic the gathering tendra liga de esports!</b></h3>
                                </a>
                                </div>
                            </li>
                            </ul>
                        </div>
                        
                    </div>
                     <br/>
                </div>
            
            </div>
            <div class="col s12 m4 ">
            <g:form action="createPost">
            <div class="col s12 white text pink darken-4">
                <div class="col s12 input-field">  
                        <textarea id="textarea1" name="content" class="materialize-textarea white-text"></textarea>
                    </div>
                    <div class="col s4 offset-s8 pink darken-4">
                        <a onclick="createPost(this)" class="waves-effect waves-light btn">Publicar</a>
                        <br/>
                    </div>
                    <div class="col s12 pink darken-4" id="posts">
                        <g:render template="content"/>
                    </div>
                    <div class="col s12 pink darken-4">
                    <br>
                        <script id="cid0020000205415084539" data-cfasync="false" async src="//st.chatango.com/js/gz/emb.js" style="width: 98%;height: 394px;">{"handle":"playlivechat","arch":"js","styles":{"a":"993399","b":58,"c":"FFFFFF","d":"FFFFFF","f":58,"i":58,"k":"993399","l":"993399","m":"993399","n":"FFFFFF","o":58,"p":"10","q":"993399","r":58,"t":0,"ab":false,"surl":0,"fwtickm":1}}</script>
                    </div>
                </div>
            </div> 
            </g:form>
                
        </div>
        
        <div id="modal1" class="modal pink darken-4">
            <div class="modal-content">
            <g:form action="addGame">
                <center><h5 class="modal pink darken-3">Agregar Juego</h5></center>
                <div class="row">
                    
                    <div class="col s12 m4 input-field">
                        <input class="white-text" id="gamerTag" name="gamerTag" type="text">
                        <label for="gamerTag">Gamer Tag</label>
                    </div>
                    <div class="col s12 m4 input-field">
                        <select class="icons" id="game" name="game" onchange="displayGameOptions()" >
                            <option value="" disabled selected>Seleccione...</option>
                            <option class="left" value="lol" data-icon="../assets/league of legends.png" value="lol">League of Legends</option>
                            <option class="left" value="fortnite"data-icon="../assets/fortnite.png">Fortnite</option>
                            <option class="left" value="overwatch"data-icon="../assets/overwatch.png">Overwatch</option>
                            <option class="left" value="marvel vs capcom"data-icon="../assets/marvel vs capcom.png">Marvel vs Capcom</option>
                        </select>
                        <label for="game">Juego</label>
                    </div>
                    <div class="col s12 m4 input-field">
                        <input class="white-text" id="rango" name="rango" type="text">
                        <label for="rango">Rango</label>
                    </div>
                    
                </div>
            </div>
            <div class="modal-footer pink darken-4">
                <button type="submit" class="modal-close pink darken-3 btn waves-effect waves-green">Agregar Juego</button>
            </div>
            </g:form>
        </div>

        <!--pwp-->
        <div class="row pink darken-4" style="display: flex; flex-grow: 1;flex-wrap: wrap;flex-direction: row; margin-top:1%;padding-bottom:2%">
            <div class="col s12 flow-text">
                <center><h4 style="color:white">Videos</h4></center>
                <div class="divider"></div>
            </div>
            
            <div class="col s12 m4  pink darken-4" style=" display: flex; padding-top:2%;">
                <iframe width="100%" height="248" src="https://www.youtube.com/embed/Hu4MUBuuXvI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        
            <div class="col s12 m4 pink darken-4" style=" display: flex; padding-top:2%;padding-bottom:2%">

                <iframe width="100%" height="248" src="https://www.youtube.com/embed/EYIgDFf_RKE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

            </div>
            <div class="col s12 m4 pink darken-4" style="color:white; display: flex; padding-top:2%; padding-bottom:2%">
                
                <div class="col s8 offset-2"><br/><br/><br/><i class="material-icons large">add_circle_outline</i><br/></div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
        $(document).ready(function(){
            $('.collapsible').collapsible();
            $('select').formSelect();
            $('.modal').modal();
            $('.materialboxed').materialbox();
            $('.slider').slider();
            createPost(null);
        });
    function createPost( element ){
        showProgressAnimation();
        jQuery.ajax({
            type:'POST',
            data:jQuery(element).parents('form:first').serialize(), 
            url:'<g:createLink action='createPost' />',
            success:function(data,textStatus){
                hideProgressAnimation();
                jQuery('#posts').html(data);afterBilling();
            },
            error:function(XMLHttpRequest,textStatus,errorThrown){}
        });
        $("#textarea1").val('');
    }

    </script>
    </body>
</html>