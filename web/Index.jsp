<%-- 
    Created on : 13-nov-2018
    Author     : julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Apuntazo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Recursos/CssLogiin.css">
        <style>
            container {
                padding-right: 150px;
                padding-left: 150px;
            }
        </style> 
    </head>
    <body>

        <section>

            <div class="titulos">

                <h1>Bienvenido a Apuntazo</h1>
                <br>

                <div>
                    <h4>
                        En ésta plataforma podrás no sólo hacer uso de tus apuntes gracias a las herramientas de edición 
                    </h4>
                    <h4>
                        para un PDF, también podrás sacar beneficio de ellos compartiéndolos con el resto de la comunidad y
                    </h4>
                    <h4>
                        mediante una suscripción acceder a los de tus compañeros.
                    </h4>
                </div>

                <br>
                <h3>Si ya estás registrado incia sesión en función de tu tipo de usuario</h3>
                <br>

            </div>

            <section>

                <div class="container">

                    <form action="/FrontServlet" method="post" id="form" style="padding:0% 40% 40% 40%">
                        <input type="text" name="usuario" placeholder="Usuario" required="required" autofocus="" />
                        <input type="password" name="pass" placeholder="Contraseña" required="required" />
                        <input type="hidden" name="command" value="cuenta.Login">
                        <select name="type" required="required">
                            <option value="UsuarioPremium">Premium</option>
                            <option value="usuarioNormal">Registrado</option>
                        </select>
                        <button type="submit" class="btn btn-primary btn-block btn-large" class="myButton">Entrar</button>
                    </form> 
                    
                    <form action="#" method="post">
                        <input type="hidden" name="command" value="cuenta.Recuperar">
                        <button type="submit" class="btn btn-primary btn-block btn-large" class="myButton">Recuperar Contraseña</button>
                    </form>

                </div>

            </section>

        </section>

    </body>

</html>