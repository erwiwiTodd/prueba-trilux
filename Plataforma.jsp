

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Plataforma Trilux</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Titillium+Web:wght@400;600;700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Playwrite+GB+J:ital,wght@0,100..400;1,100..400&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Lexend+Deca:wght@100..900&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Lexend+Deca:wght@100..900&family=Titillium+Web:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700&display=swap');
  
        * { box-sizing: border-box; }

        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: #6d6d6d;
        }
        
          h1{
         font-family: "Black Ops One", system-ui;
         text-transform: uppercase;
    }
    h2, h3{
         font-family: "Lexend Deca", sans-serif;
         font-optical-sizing: auto;
    }
    a{
        font-family: "Lexend Deca", sans-serif;
        font-optical-sizing: auto;
    } 
    p, label, span{
        
        font-family: "Titillium Web", sans-serif;
        font-style: initial;
    }
    span{
         font-weight: bold;
    }

        .login-card {
            position: relative;
            z-index: 2;
            background-color: #01331c;
            width: 100%;
            max-width: 450px;
            padding: 57px 35px 71px;
            border-radius: 16px;
            text-align: center;
            box-shadow: 0 15px 40px rgba(0,0,0,0.35);
        }

        .login-logo {
            width: 100px;
            margin: 0 auto 12px;
        }

        .login-marca {
            color: white;
            font-family: "Black Ops One", system-ui;
            font-size: 22px;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        .login-campo {
            text-align: left;
            margin-bottom: 18px;
        }

        .login-campo label {
            display: block;
            color: white;
            font-size: 15px;
            margin-bottom: 6px;
        }

        .login-campo input[type="text"],
        .login-campo input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            border: none;
            border-radius: 4px;
            background-color: #d9d9d9;
            font-size: 14px;
        }

        .login-opciones {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 12px;
            margin-bottom: 25px;
        }

        .login-recordar {
            display: flex;
            align-items: center;
            gap: 6px;
            color: white;
        }

        .login-opciones a {
            color:#ff9900;
            text-decoration: none;
        }

        .login-opciones a:hover {
            text-decoration: underline;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            background-color: #FFCC00;
            color: #01331c;
            border: none;
            border-radius: 6px;
            font-weight: 700;
            font-size: 14px;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-login:hover {
            background-color: #ff9900;
        }

     .display{
    display: flex;
    align-content: space-around;
    justify-content: center;
    align-items: center;
    }
    .display span{
        padding: 10px;
    }
    .login-wrapper {
    flex: 1;                    /* ocupa todo el espacio disponible */
    display: flex;
    justify-content: center;    /* centra horizontal */
    align-items: center;        /* centra vertical */
    padding: 20px;
      /* El fondo */
    background-image: url('/Trilux_Inmobiliaria/IMG/Foto-grupal.jpg');
    background-size: cover;           /* que cubra todo */
    background-position: center;      /* centrada */
    background-repeat: no-repeat;
    position: relative;   
}

.login-wrapper::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 1;
}
    #derechos {
    background-color: #01331c;
    color: white;
    padding: 6px;
    width: 100%;                
}
    </style>
</head>
<body>

    <div class="login-wrapper">
        <div class="login-card">
            <div class="login-logo">
                <img src="${pageContext.request.contextPath}/IMG/LOGO.PNG.png" style="width:100%; height:100%; object-fit:cover;">
            </div>
      

            <form action="LoginServlet" method="POST">
                <div class="login-campo">
                    <label>Usuario</label>
                    <input type="text" name="usuario" placeholder="">
                </div>

                <div class="login-campo">
                    <label>Contraseña</label>
                    <input type="password" placeholder="">
                </div>

                <div class="login-opciones">
                    <label class="login-recordar">
                        <input type="checkbox">
                        Recordar acceso
                    </label>
                    <a href="#">¿Olvidaste tu contraseña?</a>
                </div>

                <button type="submit" class="btn-login">Iniciar sesión</button>
            </form>
        </div>
    </div>

    <footer id="derechos">
        <div class="display">
            <span>Copyright © 2026 TRILUX INMOBILIARIA</span>
            <span>|</span>
            <span>TODOS LOS DERECHOS RESERVADOS</span>
        </div>
    </footer>

</body>
</html>
