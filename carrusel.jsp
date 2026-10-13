<jsp:include page="header.jsp" />
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Playwrite+GB+J:ital,wght@0,100..400;1,100..400&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Lexend+Deca:wght@100..900&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Lexend+Deca:wght@100..900&family=Titillium+Web:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700&display=swap');
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
    p, span{
        
        font-family: "Titillium Web", sans-serif;
        font-style: initial;
    }
    span{
         font-weight: bold;
    }
    .conteiner-main{
    background-color: #02542D;
}
.conteiner{
    margin: 40px;
}

.img-fluid {
    max-width: 100%;
}
@keyframes subirDesdeAbajo {
    0% {
        opacity: 0; /* Totalmente invisible */
        transform: translateY(100px); /* Empieza 100px más abajo de su posición original */
    }
    100% {
        opacity: 1; /* Totalmente visible */
        transform: translateY(0); /* Vuelve a su posición original */
    }
}
  #terreno {
    position: relative;
    text-align: center; 
    width: 100%;
  }

  .opacidad {
    position: relative;
    width: 100%;
  }

  /* Aquí está el truco de la capa negra */
  .opacidad::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* 0.5 es el nivel de oscuridad (50%) */
    z-index: 1; /* Esto la pone al frente de la imagen */
  }

  .main-image {
    display: block;
    width: 100%;
    height: auto;
  }
  .navbar {
    width: 100%;
    transition: top 0.3s, background-color 0.3s;
}

.navbar.fixed {
    position: fixed; 
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    background-color: #333; 
    color: white;
}

.titulo{
    position: absolute;
    width: 100%;
    top: 0;
    padding: 0px;
    box-sizing: border-box; /*´para que el pading no incremente el ancho*/
    z-index: 10; /* Asegura que el menú responda a los clics */
}


.titulo-centrado{
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-content: space-around;
    align-items: center;
    margin-bottom: 0px;
    margin-top: 0px;
}
header {
        background: #3d30006b;
}

 
.transparente { /*lineas*/
    background-color: rgba(19, 19, 13, 0);
    border-style: solid;
    border-width: 1px 0px 1px 0px;
    border-color: rgba(235, 233, 207, 0.2);
    margin: 0;
    text-align: center;
    align-items: center;
}
.nav-lista {
    display: flex;
    align-items: center;
    padding-left: 0;
    margin: 0;
    list-style: none;
    width: 100%;
}

.nav-lista li {
    display: flex;
    flex: 1;                  /* todos crecen igual */
    justify-content: center;  /* centra el texto dentro */
}

.nav-link {
    width: 100%;
    text-align: center;
    padding: 30px 10px;       /* reduce el padding lateral */
    color:white;
    text-transform: uppercase;
    text-decoration: none;
}

.nav-link:hover {
    background-color: black;
    color: #a3d9a5;
}



.logo img {
    height: 66px;
    width: auto;
    display: block;
}
/*formulario xd*/

.contenedor{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    width: 100%;
    position: absolute;
    top: 43%; /* Lo baja a la mitad de la imagen gigante */
    left: 50%;
    transform: translate(-50%, -30%); /* Centrado matemático perfecto */
    box-sizing: border-box;
    flex-wrap: wrap;
    gap: 60px;
    z-index: 2;
    color: white; /* Para que las letras se lean sobre el fondo oscuro */
}

.medio-texto{
    flex: 1;
    min-width: 300px;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding-left: 100px;
}
.texto-animacion{
     opacity: 0;
    transform: translateX(-100px); /* Empieza 100px a la izquierda */
    transition: opacity 1.2s ease-out, transform 1.2s ease-out;
}

.texto-animacion.visible {
    opacity: 1;
    transform: translateX(0);
}
.medio-texto h2 {
    margin: 0;
    font-size: 60px;
}
.medio-texto h1{
    font-size: 80px;
    margin: 0px;
    display: inline-block;
   
}
.trilux-titulo {
    display: flex;
    flex-direction: row;
}

.trilux-titulo h1 {
    margin: 0;
    display: inline-block;
}
.verde{
    color: green;
}
.naranja{
    color: #ff9900;
}
.medio-formulario{
    flex: 1;
    min-width: 300px;
    display: flex;
    justify-content: center;
    align-items: center;
    padding-right: 80px;
    animation: subirDesdeAbajo 1.5s ease-out forwards;
}


/*formulario ahora sí reAL*/
.form-wrapper {
    position: relative;
    max-width: 450px;
}

.form-wrapper::before {
    content: "";
    position: absolute;
    top: -15px;
    left: 15px;
    width: 100%;
    height: 100%;
    border: 5px solid white;
    z-index: 0;
}

.form-card {
    position: relative;
    background-color: #0f2b1f;
    padding: 35px 30px;
    z-index: 1;
    border-radius: 15px;
}

.form-titulo {
    color: #ff9900;
    font-size: 26px;
    margin: 0 0 10px 0;
    line-height: 1.2;
}

.form-subtitulo {
    color: white;
    font-size: 13px;
    margin-bottom: 20px;
}

.form-row {
    display: flex;
    gap: 15px;
}

.form-group {
    flex: 1;
    margin-bottom: 15px;
    display: flex;
    flex-direction: column;
}

.form-group label {
    color: #ff9900;
    font-size: 13px;
    margin-bottom: 5px;
    font-family: "Titillium Web", sans-serif;
    font-style: unset;
    font-weight: bold;
    
}

.form-group input,
.form-group textarea {
    border: none;
    padding: 10px;
    font-size: 14px;
    border-radius: 2px;
}

.form-group textarea {
    resize: none;
    height: 80px;
}

.btn-contacto {
    width: 100%;
    background-color: #ff9900;
    color: #0d1117;
    border: none;
    padding: 14px;
    font-weight: bold;
    font-size: 14px;
    cursor: pointer;
    margin-top: 5px;
}

.btn-contacto:hover {
    background-color: #27ae60;
}

.redes-sociales {
    margin-top: 20px;
    display: flex;
    gap: 10px;
}

.redes-sociales a {
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background-color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #0d1117;
    text-decoration: none;
}

.redes-sociales a:hover{
    background-color: #ff9900;
}
.row{
    display: flex;
    justify-content: space-between; /* uno queda a la izquierda, otro a la derecha */
    align-items: center;
}

.elemento video{
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}
</style>

<div id="terreno">
        <div class="opacidad elemento" >
            <video autoplay muted loop playsinline>
        <source src="/Trilux_Inmobiliaria/IMG/Saludo.mp4" alt="video">
        </video>
        <div class="titulo">
            <header>
                <nav id="navbar" class="navbar transparente">
                    <ul class="nav-lista">
                        <li><a href="#quienes-somos" class="nav-link change">¿quienes somos?</a></li>
                        <li><a href="#proyectos" class="nav-link change">proyectos</a></li>
                        <li><a href="#formulario-unión" class="nav-link change">visitas</a></li>
                        <li><a href="${pageContext.request.contextPath}/footer.jsp" class="logo" style="padding: 5px 100px;"><img src="/Trilux_Inmobiliaria/IMG/LOGO.PNG.png"></a></li>
                        <li><a href="#unete-contenedor" class="nav-link change">¡unete!</a></li>
                         <li><a href="#visitanos" class="nav-link change">ubicación</a></li>
                          <li><a href="${pageContext.request.contextPath}/Plataforma.jsp" class="nav-link change">PLATAFORMA</a></li>
                    </ul>
                </nav>
            </header>
        </div><!-- titulo --> 
        
        <div class ="contenedor"> <!--contenedor-->
            <div class="medio-texto texto-animacion">
            <h2>Tu próxima inversión
                <br>comienza <br>con</h2>
              <div class="trilux-titulo">
                <h1 class="verde">TRI</h1><h1 class="naranja">LUX</h1>
               </div>
               
            </div>
            
            <div class="medio-formulario"> <!--formulario-->
                <div class="form-wrapper">
        <div class="form-card">
            <h2 class="form-titulo">DESCUBRE TU<br>NUEVO HOGAR</h2>
            <p class="form-subtitulo">¡Contáctanos para recibir más información de tu próxima inversión!</p>

            <form>
                <div class="form-row">
                    <div class="form-group">
                        <label>Nombres</label>
                        <input type="text" placeholder="Introduce tu nombre" required>
                    </div>
                    <div class="form-group">
                        <label>Apellidos</label>
                        <input type="text" placeholder="Introduce tu apellido" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Número de contacto</label>
                    <input type="tel" placeholder="Introduce tu número" pattern="[0-9]{9}" required>
                </div>

                <div class="form-group">
                    <label>Mensaje</label>
                    <textarea placeholder="Introduce tu mensaje" required></textarea>
                </div>

                <button type="submit" class="btn-contacto">¡Contacta e infórmate!</button>
            </form>

            <div class="redes-sociales">
                <a href="https://www.facebook.com/TriluxInmobiliariaof/#" target="_blank" rel="noopener noreferrer"><i class="bi bi-facebook"></i></a>
                <a href="https://www.instagram.com/trilux_inmobiliaria/" target="_blank" rel="noopener noreferrer"><i class="bi bi-instagram"></i></a>
            </div>
        </div>
    </div>
            </div><!--formulario-->
        </div><!--contenedor-->
      
        </div><!-- opacidad -->
</div>
