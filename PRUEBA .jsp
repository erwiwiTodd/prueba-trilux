

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <style>
        /* ===== CITA FLOTANTE ALTERNATIVA ===== */
.cita-flotante-alt {
    position: relative;
    max-width: 800px;
    margin: 60px auto 0;
    background-color: #f9f5ec;
    padding: 45px 60px;
    border-left: 6px solid #ff9900;
    border-radius: 0 20px 20px 0;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.08);
    z-index: 2;
}

.comilla-decorativa {
    position: absolute;
    top: -40px;
    left: 30px;
    font-size: 130px;
    font-family: Georgia, serif;
    color: #ffcb5c;
    line-height: 1;
    opacity: 0.5;
    pointer-events: none;
}

.cita-texto-alt {
    position: relative;
    color: #02542D;
    font-family: "Titillium Web", sans-serif;
    font-size: 18px;
    line-height: 1.7;
    margin: 0;
    z-index: 1;
}

.cita-texto-alt strong {
    color: #ff9900;
    font-weight: 700;
}

/* Responsive */
@media (max-width: 900px) {
    .cita-flotante-alt {
        padding: 30px 30px 30px 30px;
        margin: 40px 20px 0;
        border-radius: 0 15px 15px 0;
    }
    .cita-texto-alt {
        font-size: 16px;
    }
    .comilla-decorativa {
        font-size: 90px;
        top: -25px;
    }
}

/* ===== CITA FLOTANTE ===== */
.cita-flotante {
    position: relative;
    max-width: 800px;
    margin: 60px auto 0;
    background-color: #02542D;
    padding: 40px 50px 40px 70px;
    border-radius: 20px;
    box-shadow: 0 20px 50px rgba(2, 84, 45, 0.25);
    z-index: 2;
}

/* Línea amarilla decorativa a la izquierda */
.cita-linea {
    position: absolute;
    left: 30px;
    top: 40px;
    bottom: 40px;
    width: 4px;
    background: linear-gradient(180deg, #ffcb5c 0%, #ff9900 100%);
    border-radius: 4px;
}

.cita-texto {
    color: #ffffff;
    font-family: "Titillium Web", sans-serif;
    font-size: 18px;
    line-height: 1.7;
    margin: 0;
    font-style: italic;
}

.cita-texto strong {
    color: #ffcb5c;
    font-weight: 700;
}

.cita-acento {
    color: #ffcb5c;
    font-weight: 600;
}

/* Responsive */
@media (max-width: 900px) {
    .cita-flotante {
        padding: 30px 30px 30px 50px;
        margin: 40px 20px 0;
    }
    .cita-linea {
        left: 20px;
        top: 30px;
        bottom: 30px;
    }
    .cita-texto {
        font-size: 16px;
    }
}

.pub-contenedor {
    max-width: 900px;
    margin: 0 auto;
    overflow: hidden;
}

.pub-zoom {
    position: relative;
    transition: transform 0.5s ease-in-out;
}

/* El zoom afecta a imagen y botón juntos, así no se desalinean */
.pub-contenedor:hover .pub-zoom {
    transform: scale(1.05);
}

.pub-img {
    display: block;
    width: 100%;
    height: auto;
}

.pub-btn {
    position: absolute;
    left: 9.6%;
    top: 77.4%;
    width: 13.6%;
    padding: 1.2% 0;
    text-align: center;
    background-color: #fffcf8;
    color: #01331c;
    font-weight: bold;
    font-size: 0.8vw;
    text-decoration: none;
    border-radius: 30px;
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
    transition: background-color 0.3s;
}

.pub-btn:hover {
    background-color: #ffcc00;
}
    </style>
    <body>
       <!-- ⬇️ CONTENEDOR FLOTANTE -->
<div class="cita-flotante-alt">
    <span class="comilla-decorativa">"</span>
    <p class="cita-texto-alt">
        En <strong>Villa 110</strong> entendemos que cada proyecto es distinto, por eso te ofrecemos terrenos versátiles, bien ubicados y con todo el potencial para crecer. Porque un buen terreno no se mide solo en metros: <strong>se mide en las oportunidades que abre para ti y tu familia.</strong>
    </p>
</div>
       
        <div class="pub-contenedor">
    <div class="pub-zoom">
        <img src="/Trilux_Inmobiliaria/IMG/Publicidad.png.png" alt="Únete a la familia Trilux" class="pub-img">
        <a href="#formulario-unión" class="pub-btn">¡Más información aquí!</a>
    </div>
</div>
    </body>
</html>


<div id="Informacion" class="padding">
    <div class="row">
        <!-- ... todo el contenido existente ... -->
    </div>

   
    <!-- ⬇️ CONTENEDOR FLOTANTE -->
    <div class="cita-flotante">
        <div class="cita-linea"></div>
        <p class="cita-texto">
            En <strong>Villa 110</strong> entendemos que cada proyecto es distinto, por eso te ofrecemos terrenos versátiles, bien ubicados y con todo el potencial para crecer. Porque un buen terreno no se mide solo en metros: <span class="cita-acento">se mide en las oportunidades que abre para ti y tu familia.</span>
        </p>
    </div>
</div>