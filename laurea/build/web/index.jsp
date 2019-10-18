<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title> Láurea </title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="estilo/assets/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="estilo/assets/css/reset.css">
        <!-- Bootstrap versão 4.1 -->
        <link rel="stylesheet" type="text/css" href="estilo/assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="estilo/assets/css/estilo_geral.css">
        <script type="text/javascript">document.documentElement.classList.add("js");</script>
        <!-- Tipografia -->
        <link href="https://fonts.googleapis.com/css?family=Bubblegum+Sans|Pontano+Sans|Port+Lligat+Sans&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="estilo/assets/img/logo_icon.png"/>

    </head>
    <body>
        <!-- <meta http-equiv="refresh" content='10;URL="./"'>  -->
        <!-- att a página e em 10 seg manda pro home -->
        <header class="container-fluid m-p" data-anime="100">
            <div class="container ">
                <div class="logo " data-anime="400"> <a href="index.jsp">Láurea</a></div>
                <nav>
                    <ul data-anime="800">
                        <li><a href="index.jsp"><strong>Início</strong> </a></li>
                        <li><a href="estilo/professores.html">Professores</a></li>
                        <li><a href="estilo/contato.html">Contato</a></li>
                        <li><a href="estilo/depoimentos.html">Depoimentos</a></li>
                        <li><a href="estilo/sobre.html">Sobre</a></li>
                        <li><div onclick="toggleSidebar()"><a>&nbsp;|&nbsp;&nbsp;</a>Login</div></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- Formulário de Login -->
        <div id="sidebar">
            <button class="close" onclick="toggleSidebar()">
                <span aria-hidden="true">&times;</span>
            </button>
            <img src="estilo/assets/img/logo_icon.png">

            <form method="POST" action="" class="login">
                <div class="form-group">
                    <label for="login">Login:</label>
                    <input type="text" class="form-control" id="login">
                </div>
                <div class="form-group">
                    <label for="senha">Senha:</label>
                    <input type="password" class="form-control" id="senha">
                </div>
                <div class="form-group">
                    <input type="submit" value="ENTRAR" class="btn btn-success"/>
                </div>
            </form>

        </div>
        <!-- Fim Formulario-Login -->
        <!-- Qualidade em Ensinar -->
        <section class="container-fluid conteudo_inicio m-p" data-anime="1200">
            <div class="row justify-content-center m-p">
                <img src="estilo/assets/img/logo.png">
            </div>
            <h1>qualidade em ensinar</h1>

            <p>Muitas pessoas ainda associam alto desempenho nos estudos ao esforço contínuo de longas horas de foco, acompanhado da pressão por notas altas. Já a <span>Láurea</span> comprova que o caminho contrário pode ser ainda mais eficiente.</p>

            <a href="" class="btn_sobre">SOBRE</a>
        </section>
        <!-- Fim Qualidade em Ensinar -->
        <!-- Organização e Professor -->
        <section class="container-fluid m-p organizacao" data-anime="1200">
            <h1>organização</h1>

            <img src="estilo/assets/img/paulo_circle.png">
            <h2>Paulo Henrique</h2>
            <h3>CEO e Professor</h3>
            <a href="" class="btn_vermais">VER MAIS</a>

        </section>
        <!-- Fim Organização e Professor -->
        <!-- Planos  -->
        <section class="container-fluid m-p planos">
            <h1>Ensino Fundamental e Médio</h1>
            <ul>
                <li>Português <img src="estilo/assets/img/brazil.png"></li>
                <li>Química <img src="estilo/assets/img/quimica.png"><img src="estilo/assets/img/quimica2.png"></li>
                <li>Matemática <img src="estilo/assets/img/matematica.png"></li>
                <li>Física <img src="estilo/assets/img/fisica.png"></li>
            </ul>
            <h1>Extra</h1>
            <ul>
                <li>Italiano Básico <img src="estilo/assets/img/italy.png"></li>
                <li>Inglês <img src="estilo/assets/img/usa.png"></li>
                <li>Espanhol <img src="estilo/assets/img/spain.png"></li>
                <li>Raciocínio Lógico <img src="estilo/assets/img/rac_logico.png"></li>
            </ul>
            <h3>Venha evoluir com quem entende!
                Para mais detalhes entre em contato</h3>
            <a href="" class="btn_contato">CONTATO</a>
        </section>
        <!-- Fim  Planos  -->
        <!-- Depoimentos -->
        <section class="container-fluid m-p depoimentos">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col">
                        <img src="estilo/assets/img/livros.png" class="">
                    </div>
                    <div class="col">
                        <ul>
                            <li><h1>Alcance grandes resultados em pouco tempo.</h1></li>
                            <li><h1>Trabalhe em cima da suas dificuldades.</h1></li>
                            <li><h1>Melhore suas notas.</h1></li>
                            <li><a href="" class="btn_depoimentos">DEPOIMENTOS</a></li>
                        </ul>
                    </div>

                </div>
                <div class="frase_depoimentos">
                    <h1>“Aprender é a única coisa que a mente nunca se cansa, nunca tem medo e nunca se arrepende”</h1>
                </div>
            </div>
        </section>
        <!-- Fim Depoimentos -->
        <!-- Footer -->
        <footer class="container-fluid  m-p rodape footer">
            <div class="container footer_menu">
                <div>
                    <ul class="links"> 
                        <li><a href="estilo/professores.html"> Professores</a></li>
                        <li><div onclick="toggleSidebar()">Área Restrita</div></li>
                        <li><a href="estilo/contato.html">Contato</a></li>
                        <li><a href="estilo/sobre.html">Sobre</a></li>
                        <li><a href="estilo/depoimentos.html">Depoimentos</a></li>
                    </ul>
                </div>
                <div class="contato_rodape">
                    <h1>CONTATO</h1>
                    <div class="conteudo_contato">
                        <ul>
                            <li>~ (061) 3333 - 3333</li>
                            <li>~ contato@laurea.com</li>
                            <li>~ Taguatinga Centro - DF</li>
                        </ul>
                    </div>
                </div>
                <div class="redes">
                    <h1>REDES SOCIAIS</h1>
                    <ul>
                        <li><img src="estilo/assets/img/facebook.png"></li>
                        <li><img src="estilo/assets/img/twitter.png"></li>
                    </ul>
                    <ul>
                        <li><img src="estilo/assets/img/whatsapp.png"></li>
                        <li><img src="estilo/assets/img/instagram.png"></li>
                    </ul>
                </div>

            </div>



        </footer>
        <!-- Fim Footer -->
        <!-- COPY -->
        <div class="copy">
            <p>Copyright© 2019 Láurea - Alguns direitos reservados.</p>
        </div>








        <!-- animações de entrada na página -->
        <script type="text/javascript" src="estilo/assets/js/simple-anime.js"></script>

        <!-- Slide deve ser colado em toda pagina de HTML  -->
        <script type="text/javascript" src="estilo/assets/js/simple-slide.js"></script>
        <script type="text/javascript" src="estilo/assets/js/script.js"></script>

        <!-- Jquery 3.4.1 e bootstrap -->
        <script type="text/javascript" src="estilo/assets/js/jquery.js"></script>
        <script type="text/javascript" src="estilo/assets/js/bootstrap.bundle.min.js"></script>

        <!-- AÇÃO DO FORMULÁRIO DE LOGIN -->
        <script type="text/javascript">
                            function toggleSidebar() {
                                document.getElementById("sidebar").classList.toggle('active');
                            }
        </script>
    </body>
</html>
