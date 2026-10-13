

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<style>
    
    .animar-subir{
    opacity: 0;
    transform: translateY(80px);
    transition: opacity 1s ease-out, transform 1s ease-out;
}
.animar-subir.visible {
    opacity: 1;
    transform: translateY(0);
}



           
     .beneficios-grid {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 50px 40px;
    padding: 60px 40px;
    padding-top: 0px;
    background-color: #F7F6EC;
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
    .row{
        display: flex;
    }
    .col{
    flex-basis: 0; 
    flex-grow: 1;
    /* Con ambas propiedades las cajas tienen el mismo ancho */
    box-sizing: border-box; /* Para que el padding no incremente el ancho (en este caso) */
}
.col8{
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    color: white;
}

.col8 span{
    margin-bottom: 20px;
    margin-left: 20px;
}

.col8 p{
    color: #FFCC00;
    font-size: 12px;
    margin-left: 20px;
    margin-top: 30px;
}

.primera-fila img {
    height: 120px;
    width: auto;
    display: block;
}
.quinta-fila{
    margin-left: 40px;
}
.col2 span{
    margin: 0px;
}

.segunda-fila span{
    cursor: pointer;
}

.tercera-fila span{
    cursor: pointer;
}
.icon i{
    font-size: 25px;
    cursor: pointer;
}

.icon i:hover{
    color: #FFCC00;
    text-decoration: none;
}
.segunda-fila span:hover{
    color: #FFCC00;
    text-decoration: none;
}

.tercera-fila span:hover{
    color: #FFCC00;
    text-decoration: none;
}
.numero-x{
    font-size: 30px;
}
.icon{
    margin-top: 10px
}
.footer-grid {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    grid-template-rows: auto auto; /* fila 1 = títulos, fila 2 = subtítulos/redes */
    row-gap: 30px;
    margin-left: 20px;
    color:white;
}

.footer-grid > div {
    display: flex;
    flex-direction: column;
}

.footer-grid span{
    margin-top: 20px;
}
    
    
    .elemento{
    flex: 0 0 100%;
    scroll-snap-align: start;
    height: 100%;
}
.elemento img {
        width: 100%;
        height: 100%;
        object-fit: cover;    /* recorta sin deformar, llena el espacio */
        display: block;
    }
    .carrusel {
        display: flex;
        flex-wrap: nowrap;
        overflow-x: auto;
        scroll-snap-type: x mandatory;
        scroll-behavior: smooth;
        width: 100%;
        height: 800px; 
        scrollbar-width: none;   
    }
    
    .carrusel::-webkit-scrollbar {
    display: none;              /* Chrome, Safari, Edge */
}
.medio-texto{
    padding-left: 0px;
}

#ir-arriba {
    position: fixed;
    right: 2em;
    bottom: 1em;
    width: 3.4em;
    height: 3.4em;
    background-color: #ff9900;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 4px 12px rgba(0,0,0,0.3);
    z-index: 1000;
    transition: background-color 0.3s ease;
}

#ir-arriba img {
    width: 60%;
    height: auto;
    display: block;
}

#ir-arriba:hover {
    background-color: #27ae60;
}
#Informacion {
    background-color: rgb(249 245 236);
    overflow: hidden;
}

/* Fila principal: imagen a la izquierda, texto a la derecha */
#Informacion .row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 60px;
    max-width: 1400px;
    margin: 0 auto;
    flex-wrap: wrap;
}

/* Columna de la imagen (logo del pez) */
#Informacion .col {
    flex: 1;
    min-width: 300px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

#Informacion .col img {
    max-width: 80%;
    height: auto;
    display: block;
    margin-left: 50px;
}

/* Columna del texto */
#Informacion .texto {
    flex: 1.3;
    min-width: 320px;
    text-align: justify;
    color: #333;
}

/* Eyebrow con las dos líneas + texto del medio */
.rowcito-linea {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 15px;
    justify-content: center;
}

.rowcito-linea h3 {
    color: #02542D;
    font-size: 15px;
    font-weight: 700;
    text-transform: uppercase;
    margin: 0;
}

.linea-corta {
    width: 40px;
    height: 2px;
    background-color: #ffcc00;
    display: inline-block;
}

/* Título "Villa 110 - Huacho" */
#Informacion .trilux-titulo {
    display: flex;
    flex-direction: row;
    gap: 10px;
    margin-bottom: 20px;
    justify-content: center;
}

#Informacion .trilux-titulo h1 {
    font-size: 50px;
    margin: 0;
    display: inline-block;
}

/* Párrafos */
#Informacion p {
    font-size: 20px;
    line-height: 1.7;
    margin-bottom: 15px;
    color: #444;
    max-width: 70%;
    margin: 0 auto;
    font-weight: 600;
    
}
/* Íconos SVG (los dos que van entre párrafos) */
#Informacion .col .beneficio-svg {
    width: 45px;
    height: 45px;
    margin-right: 15px;
    fill: #02542D;
    display: inline-block;
    vertical-align: middle;
}

/* Contenedor de los íconos */
#Informacion .col:last-child {
    flex-direction: row;
    justify-content: flex-start;
    margin-bottom: 20px;
    gap: 20px;
}

#Informacion .iconos-info {
    display: flex;
    justify-content: center;   
    align-items: center;
    gap: 40px;                 
    margin: 30px 0;            
}

/* Íconos individuales */
#Informacion .iconos-info .beneficio-svg {
    width: 120px;               
    height: 120px;
    fill: #02542D;            
    transition: transform 0.3s ease;
}

/* Efecto hover opcional */
#Informacion .iconos-info .beneficio-svg:hover {
    transform: scale(1.1);
}
#plano{
    background-color: #F7F6EC;
    padding-top: 80px;
}


.tarjeta-flotante{
    position:absolute;
    bottom: 0px;
    left: 50%;
    transform: translate(-50%, 80%);
    background: white;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 25px;
    padding: 40px 85px;
    z-index: 5;
    white-space: nowrap;
    max-width: 90%;
}

.info-item{
    display: flex;
    align-items: center;
    gap: 10px;
}

.info-icono{
   display: flex;
    align-items: center;
    justify-content: center;
    width: 32px;               
    height: 32px;              
    flex-shrink: 0; 
}
.info-icono svg {
    width: 100%;
    height: 100%;
    display: block;
}
.info-label{
    display: block;
    font-size: 22px;
    color: #999;
    font-weight: 500;
}

.info-valor{
     display: block;
    font-size: 15px;
    color: #0d1117;
    font-weight: bold;
    white-space: nowrap;
}

.divisor {
    width: 1px;
    height: 40px;
    background-color: #e0e0e0;
}

#frase{
        text-align: center;
        padding: 10px;
        font-size: 45px;
        color:#FFCC00;
        margin-bottom: 20px;
    }
    
    #frase h2{
        margin-bottom: 10px;
    }
    #frase .trilux-titulo {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    align-content: stretch;
    justify-content: center;
}

.mapa-oficina {
    width: 100%;
    aspect-ratio: 16/9;
}
.mapa-oficina iframe {
    width: 100%;
    height: 100%;
    border: 0;
    display: block;
}

#visitanos{
    color: #02542D ;
    font-size: 40px;
}
#visitanos .row {
    display: flex;
    justify-content: center;
}
#visitanos i{
    margin-right: 20px;
    font-size: 50px;
    color: orange;
}

#oferta{
    display: flex;
    justify-content: space-around;
    font-size: 35px;
    color: #ff9900;
    background: linear-gradient(356deg, #1f5d40 0%, #022515 100%);
    overflow: hidden;
}

/* Estado inicial: fuera a la izquierda, invisible */
.oferta-contenido {
    opacity: 0;
    transform: translateX(-150%);
    /* Transición lenta y suave */
    transition: opacity 1.5s ease, transform 1.5s cubic-bezier(0.25, 1, 0.5, 1);
}

/* Estado final: en su lugar */
.oferta-contenido.visible {
    opacity: 1;
    transform: translateX(0);
}


#villa-formulario{
    background-attachment: fixed;
    position: relative;
    text-align: center;
    width: 100%;
    background-image: url(/Trilux_Inmobiliaria/IMG/villa-110.jpg);
    background-size: cover;
    background-position: center;
    background-color: transparent;
}

#villa-formulario::before{
     content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #31270996;
    z-index: 1;
}
.union-villa .medio-texto h2{
    color: white;
    margin-bottom: 18px;
}

#villa-formulario .union-villa {
    position: relative;
    z-index: 2;
}


/* ==================== SECCIÓN GALERÍA ==================== */
.galeria-seccion {
    background-color: white;
    width: 100%;
    overflow: visible;
    position: relative;
    padding-bottom: 80px;
}

/* ====== HEADER: título + tabs ====== */
.galeria-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 60px 8% 130px; 
    margin-bottom: 30px;
    flex-wrap: wrap;
    gap: 20px;
    background-color: #013b1f;
}

.galeria-header h1 {
    color: white;
    font-size: 32px;
    font-weight: 700;
    margin: 0;
     letter-spacing: 2px; 
}

.galeria-tabs {
    display: flex;
    gap: 10px;
}

.tab-btn {
    background-color: transparent;
    color: white;
    border: 2px solid white;
    padding: 8px 22px;
    border-radius: 50px;
    font-size: 13px;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.tab-btn.activo {
    background-color:#ff9900;
    border-color: #ff9900;
}

/* ====== EL BLOQUE QUE FLOTA (sube con margin negativo) ====== */
.galeria-contenido {
    max-width: 1200px;
    margin: -100px auto 0;    /* ⬅️ ⬅️ ⬅️ ESTE ES EL TRUCO: -100px sube el contenido */
    position: relative;
    z-index: 2;                /* Queda por encima del header azul */
    padding: 0 20px;
}

/* ====== CARRUSEL ====== */
.galeria-main {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0 20px;
}

.galeria-track {
    display: flex;
    gap: 15px;
    overflow-x: hidden;
    scroll-behavior: smooth;
    width: 100%;
    border-radius: 12px;
}

.galeria-slide {
    position: relative;
    flex: 0 0 calc(100% - 60px);
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);  /* ⬅️ Sombra fuerte para que "flote" */
}

.galeria-slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    border-radius: 15px;
}

.galeria-caption {
    position: absolute;
    bottom: 50px;
    left: 27px;
    color: white;
    font-weight: 600;
    font-size: 15px;
    padding: 6px 14px;
    background-color: rgba(0, 0, 0, 0.55);
    border-radius: 20px;
    backdrop-filter: blur(4px);
}

.galeria-descripcion{
    position: absolute;
    bottom: 18px;
    left: 20px;
    color: white;
    font-weight: 600;
    font-size: 18px;
    padding: 6px 14px;
    line-height: 1.2;
}
/* ====== FLECHAS ====== */
.galeria-flecha {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: #ff9900;
    color: white;
    border: none;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    font-size: 16px;
    cursor: pointer;
    z-index: 5;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: background-color 0.3s ease, transform 0.3s ease;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
}

.galeria-flecha:hover {
    background-color: #02542D;
    transform: translateY(-50%) scale(1.1);
}

.galeria-flecha.prev { left: 0; }
.galeria-flecha.next { right: 0; }

/* ====== MINIATURAS ====== */
.galeria-miniaturas {
    display: flex;
    justify-content: center;
    gap: 8px;
    margin-top: 25px;
    padding: 0 40px;
    flex-wrap: nowrap;
    overflow-x: auto;
    scrollbar-width: none;
}

.galeria-miniaturas::-webkit-scrollbar { display: none; }

.miniatura {
    width: 100px;
    height: 65px;
    border-radius: 8px;
    overflow: hidden;
    cursor: pointer;
    opacity: 0.5;
    transition: opacity 0.3s ease, border 0.3s ease, transform 0.3s ease;
    flex-shrink: 0;
    border: 3px solid transparent;
}

.miniatura img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.miniatura.activa {
    opacity: 1;
    border-color: #8cc63f;
    transform: translateY(-3px);
}

#testimonios .row{
     gap: 30px;
     padding-top: 20px;
}
#testimonios h2{
    font-size: 100px;
    text-align: center;
    color: #FFCC00;
}

#testimonios p{
    margin-left: 20px;
    margin-right: 20px;
    text-align: justify;
}
.icon-test img{
    margin-left: 20px;
    margin-right: 10px;
    object-fit: cover;
    border-radius: 100%;
    width: 66px;
    height: 66px;
    margin-block-start: 1em;
}

.gap-test{
    border: 2px solid orange;
    border-radius: 15px;
    width: 400px;
}
.icon-test{
    display: flex;
    justify-content: flex-start;
    align-items: center;
}

.display-test{
     margin-left: 10px;
}
.display-test h3{
    margin-block-end: 8px;

}
.display-test i{
    color: orange;
    font-size: 20px;
}

.separacion{
    margin-left: 5px;
}

.linea-corta {
        width: 103px;
    height: 5px;
    background-color: #ffcc00;
    margin-right: 15px;
}
.rowcito-linea{
    display: flex;
    flex-direction: row;
    /* justify-content: space-evenly; */
    align-items: baseline;
   padding-bottom: 20px;
}


/* ==========================================
   SECCIÓN "TU FUTURO EN HUACHO"
   ========================================== */
#futuro-huacho {
    background-color: #f9f5ec;
    padding: 80px 100px;
    overflow: hidden;
}

.futuro-row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 60px;
    max-width: 1400px;
    margin: 0 auto;
    flex-wrap: wrap;
}

/* ===== COLUMNA IZQUIERDA ===== */
.futuro-texto {
    flex: 1;
    min-width: 320px;
    max-width: 500px;
}

/* Eyebrow con línea amarilla al lado */
.eyebrow-futuro {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 25px;
}

.eyebrow-futuro span:first-child {
    color: #02542D;
    font-family: "Lexend Deca", sans-serif;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 2px;
    text-transform: uppercase;
    white-space: nowrap;
}

.eyebrow-futuro .linea-eyebrow {
    display: inline-block;
    width: 80px;
    height: 3px;
    background-color: #ffcb5c;
    border-radius: 2px;
}

/* Título grande */
.titulo-futuro {
    font-family: "Lexend Deca", sans-serif;
    font-size: 62px;
    font-weight: 800;
    line-height: 1.05;
    color: #02542D;
    margin: 0 0 25px 0;
}

.titulo-futuro .titulo-naranja {
    color: #ff9900;
}

/* Subtítulo */
.subtitulo-futuro {
    font-family: "Titillium Web", sans-serif;
    font-size: 20px;
    line-height: 1.6;
    color: #4a5568;
    margin-bottom: 35px;
    max-width: 420px;
    font-weight: 600;
}

/* Botón "Ver terrenos →" */
.btn-ver-terrenos {
    display: inline-flex;
    align-items: center;
    gap: 12px;
    background-color: transparent;
    color: #02542D;
    border: 2px solid #02542D;
    padding: 14px 32px;
    border-radius: 50px;
    font-family: "Lexend Deca", sans-serif;
    font-size: 15px;
    font-weight: 700;
    text-decoration: none;
    letter-spacing: 1px;
    transition: all 0.3s ease;
    background: none;
    font-family: inherit;
    cursor: pointer;
}

.btn-ver-terrenos:hover {
    background-color: #02542D;
    color: white;
    transform: translateX(5px);
}

.btn-ver-terrenos.activo svg path {
    stroke: white;
}

.btn-ver-terrenos.activo svg {
    transform: rotate(90deg);
}
.btn-ver-terrenos:hover svg path {
    stroke: white;
}

.btn-ver-terrenos svg {
    transition: transform 0.3s ease;
}

.btn-ver-terrenos:hover svg {
    transform: translateX(3px);
}

/* ===== COLUMNA DERECHA: IMAGEN ===== */
.futuro-imagen {
    position: relative;
    flex: 1;
    min-width: 320px;
    max-width: 650px;
    height: 500px;
}

/* Forma de arco (semicírculo superior) */
.forma-arco {
    position: absolute;
    inset: 0;
    border-radius: 50% 50% 15% 15% / 40% 40% 10% 10%;
    overflow: hidden;
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
}

.forma-arco img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

/* Sol amarillo (arriba a la derecha) */
.sol-decorativo {
    position: absolute;
    top: -50px;
    right: -30px;
    width: 130px;
    height: 130px;
    z-index: 3;
    animation: girarSol 20s linear infinite;
}

@keyframes girarSol {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
}

/* Hojas verdes (abajo a la izquierda) */
.hojas-decorativas {
    position: absolute;
    bottom: 20px;
    left: -40px;
    width: 160px;
    height: 160px;
    z-index: 3;
}

/* Línea ondulada amarilla (abajo a la derecha) */
.onda-amarilla {
    position: absolute;
    bottom: -10px;
    right: 20px;
    width: 200px;
    height: 40px;
    z-index: 3;
}

/* ===== RESPONSIVE ===== */
@media (max-width: 900px) {
    #futuro-huacho {
        padding: 60px 30px;
    }
    .titulo-futuro {
        font-size: 42px;
    }
    .futuro-imagen {
        height: 350px;
    }
    .sol-decorativo {
        width: 90px;
        height: 90px;
        top: -30px;
        right: 0;
    }
    .hojas-decorativas {
        width: 110px;
        height: 110px;
        left: -20px;
    }
}

/* ===== CITA FLOTANTE ALTERNATIVA ===== */
.cita-flotante-alt {
    position: relative;
    max-width: 800px;
    margin: 60px auto 0;
    background-color: #ffffff;
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

/* ===== PANEL OCULTO / DESPLEGABLE ===== */
.panel-info {
    max-height: 0;
    opacity: 0;
    overflow: hidden;
    margin-top: 0;
    transition: max-height 1.2s ease, opacity 0.8s ease, margin-top 0.6s ease;
}

.panel-info.abierto {
    max-height: 2000px;       /* ⬅️ Ajusta si el contenido es más alto */
    opacity: 1;
    padding: 80px 100px;
    
}

.panel-info-inner {
    padding: 20px 0;
}
</style>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>¡Bienvenido a Villa 110!</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Villa-110-Style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/carrusel.style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    </head>
        <body style="margin: 0%;">
    
      <div class="conteiner-main">
      <div id="main-header">
            <div class="row">
                <div class="col derecha">
                <i class=""></i>
            <span>La oficina esta abierta hoy de 10am - 6pm</span>
                </div>            
            <div class="col izquierda">
                <div class="margen1">
                <span>Av. Circunvalación L-18, copedsa. Oficina 301-Santiago de Surco</span>
                <span style="cursor: pointer;">BLOG</span>
                <i class="bi bi-text-center pointer" style="font-size: 20px; cursor: pointer;"></i>
                </div>
            </div>
          </div>
        </div>
      </div><!-- container-main -->
      
    
    <div id="terreno">
        <div class="opacidad" >
            <div class="carrusel">
                                  <div class="elemento"> <img src="/Trilux_Inmobiliaria/IMG/Foto-grupal.jpg"   alt="terreno"></div>
                                         <div class="elemento"> <img src="/Trilux_Inmobiliaria/IMG/Foto-1.jpg"   alt="terreno"></div>
                                        <div class="elemento"> <img src="/Trilux_Inmobiliaria/IMG/Foto-2.jpg"   alt="terreno" ></div>
                                         <div class="elemento"> <img src="/Trilux_Inmobiliaria/IMG/Foto-3.jpg"   alt="terreno"></div>               
            </div>
        
        
        <div class="titulo">
            <header>
                <nav id="navbar" class="navbar transparente">
                    <ul class="nav-lista">
                        <li><a href="#futuro-huacho" class="nav-link change">proyecto</a></li>
                        <li><a href="#plano" class="nav-link change">características</a></li>
                        <li><a href="#galeria-seccion" class="nav-link change">GALERIA</a></li>
                        <li><a href="${pageContext.request.contextPath}/footer.jsp" class="logo" style="padding: 5px 100px;"><img src="/Trilux_Inmobiliaria/IMG/LOGO.PNG.png"></a></li>
                        <li><a href="#testimonios" class="nav-link change">TESTIMONIOS</a></li>
                         <li><a href="#visitanos" class="nav-link change">VISITAS</a></li>
                          <li><a href="#villa-formulario" class="nav-link change">COTIZAR AHORA</a></li>
                    </ul>
                </nav>
            </header>
        </div><!-- titulo --> 
        
        <div class ="contenedor" style="top: 40%; align-items: flex-start; "> <!--contenedor-->
            <div class="medio-texto" style="align-items: flex-start;">
                <div class="trilux-titulo">
                <h1 class="naranja">VILLA</h1><h1 class="verde">110</h1>
               </div>
                 <h2>Tu próxima inversión</h2>
            </div>          
        </div><!--contenedor-->
      </div><!-- opacidad -->
      
      
        
        <div class="tarjeta-flotante">
    
    <!-- Item 1: Ubicación -->
    <div class="info-item">
        <div class="info-icono">
            <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                <path d="M16,1C9.38,1,4,6.38,4,13c0,6.42,10.83,17.25,11.3,17.71C15.49,30.9,15.75,31,16,31s0.51-0.1,0.7-0.29 C17.17,30.25,28,19.42,28,13C28,6.38,22.62,1,16,1z" fill="#02542D"/>
                <circle cx="16" cy="13" fill="#ff9900" r="5"/>
            </svg>
        </div>
        <div>
            <span class="info-label">Ubicación</span>
            <span class="info-valor">A 30 minutos del Gran<br>Megapuerto de Chancay</span>
        </div>
    </div>

    <div class="divisor"></div>

    <!-- Item 2: Desde 200m2 -->
    <div class="info-item">
        <div class="info-icono">
          <svg viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g>
          <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> 
          <path d="M11 4V7L5 7V9H11V12H12L16 8L12 4L11 4Z" fill="#02542D"></path> <path d="M0 1L3.41715e-07 15H8V13H2L2 3H8L8 1L0 1Z" fill="#02542D"></path> </g>
          </svg>
        </div>
        <div>
            <span class="info-label">Dimensión</span>
            <span class="info-valor">200 m²</span>
        </div>
    </div>

    <div class="divisor"></div>

    <!-- Item 3: Desde S/35,000 -->
    <div class="info-item">
        <div class="info-icono">
            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g>
            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> 
            <path opacity="0.5" d="M3.17157 7.17157C4.01536 6.32778 5.22954 6.09171 7.25179 6.02566L8.75208 6.00188C9.1435 6 9.55885 6 10 6H14C14.4412 6 14.8565 6 15.2479 6.00188L16.7482 6.02566C18.7705 6.09171 19.9846 6.32778 20.8284 7.17157C22 8.34315 22 10.2288 22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H9.99998C6.22876 22 4.34314 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14C2 10.2288 2 8.34315 3.17157 7.17157Z" fill="#ff9900"></path> <path d="M12.75 10C12.75 9.58579 12.4142 9.25 12 9.25C11.5858 9.25 11.25 9.58579 11.25 10V10.0102C10.1612 10.2845 9.25 11.143 9.25 12.3333C9.25 13.7903 10.6151 14.75 12 14.75C12.8242 14.75 13.25 15.2826 13.25 15.6667C13.25 16.0507 12.8242 16.5833 12 16.5833C11.1758 16.5833 10.75 16.0507 10.75 15.6667C10.75 15.2525 10.4142 14.9167 10 14.9167C9.58579 14.9167 9.25 15.2525 9.25 15.6667C9.25 16.857 10.1612 17.7155 11.25 17.9898V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V17.9898C13.8388 17.7155 14.75 16.857 14.75 15.6667C14.75 14.2097 13.3849 13.25 12 13.25C11.1758 13.25 10.75 12.7174 10.75 12.3333C10.75 11.9493 11.1758 11.4167 12 11.4167C12.8242 11.4167 13.25 11.9493 13.25 12.3333C13.25 12.7475 13.5858 13.0833 14 13.0833C14.4142 13.0833 14.75 12.7475 14.75 12.3333C14.75 11.143 13.8388 10.2845 12.75 10.0102V10Z" fill="#ff9900"></path> <path d="M12.0522 1.25H11.9482C11.0497 1.24997 10.3005 1.24995 9.70568 1.32991C9.07789 1.41432 8.51109 1.59999 8.05562 2.05546C7.60015 2.51093 7.41448 3.07773 7.33007 3.70552C7.27275 4.13189 7.25653 5.15147 7.25195 6.02566L8.75224 6.00188C8.75677 5.15523 8.77116 4.24407 8.8167 3.9054C8.87874 3.44393 8.98596 3.24644 9.11628 3.11612C9.24659 2.9858 9.44409 2.87858 9.90555 2.81654C10.3886 2.7516 11.0362 2.75 12.0002 2.75C12.9642 2.75 13.6117 2.7516 14.0948 2.81654C14.5562 2.87858 14.7537 2.9858 14.884 3.11612C15.0144 3.24644 15.1216 3.44393 15.1836 3.9054C15.2292 4.24407 15.2436 5.15523 15.2481 6.00188L16.7484 6.02566C16.7438 5.15147 16.7276 4.13189 16.6702 3.70552C16.5858 3.07773 16.4002 2.51093 15.9447 2.05546C15.4892 1.59999 14.9224 1.41432 14.2946 1.32991C13.6999 1.24995 12.9506 1.24997 12.0522 1.25Z" fill="#ff9900"></path> </g>
            </svg>
        </div>
        <div>
            <span class="info-label">Desde</span>
            <span class="info-valor">S/ 35,000</span>
        </div>
    </div>

</div><!-- tarjeta flotante -->
               
      </div><!-- tarjeta flotante -->
</div><!-- terreno -->


<div style=" background-color: #02542D; padding: 30px;"></div>
<div style="background-color: #ff9900;  padding: 10px;"></div>

      

<div id="futuro-huacho" class="padding">
    <div class="futuro-row">

        <!-- ===== COLUMNA IZQUIERDA: TEXTO ===== -->
        <div class="futuro-texto  animar-subir">
            
            <!-- Eyebrow con línea -->
            <div class="eyebrow-futuro">
                <span>UNA OPORTUNIDAD PARA CRECER</span>
                <span class="linea-eyebrow"></span>
            </div>

            <!-- Título grande -->
            <h2 class="titulo-futuro">
                Tu futuro en<br>
                <span class="titulo-naranja">Huacho</span>
            </h2>

            <!-- Subtítulo -->
            <p class="subtitulo-futuro">
                Ya sea que busques construir tu hogar, invertir o desarrollar un proyecto, Villa 110 te ofrece el espacio y la seguridad que necesitas para hacerlo realidad.
            </p>

            <!-- Botón -->
            <button type="button" class="btn-ver-terrenos" id="btn-mas-info">
              Más info
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M5 12h14M13 6l6 6-6 6" stroke="#02542D" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </button>
        </div>

        <!-- ===== COLUMNA DERECHA: IMAGEN CON FORMA ===== -->
        <div class="futuro-imagen  animar-subir">
            <!-- Forma orgánica con imagen -->
            <div class="forma-arco">
                <img src="/Trilux_Inmobiliaria/IMG/3d-terreno.png" alt="terreno-3d"/>
            </div>

            <!-- Decoraciones -->
            <!-- Sol amarillo -->
            <svg class="sol-decorativo" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                <circle cx="50" cy="50" r="20" fill="#ffcb5c"/>
                <line x1="50" y1="10" x2="50" y2="2" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="50" y1="90" x2="50" y2="98" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="90" y1="50" x2="98" y2="50" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="10" y1="50" x2="2" y2="50" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="78" y1="22" x2="84" y2="16" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="22" y1="78" x2="16" y2="84" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="78" y1="78" x2="84" y2="84" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
                <line x1="22" y1="22" x2="16" y2="16" stroke="#ffcb5c" stroke-width="6" stroke-linecap="round"/>
            </svg>
        </div>

    </div>
</div><!-- futuro-huacho -->


<div id="Informacion" class="panel-info">
    <div class="panel-info-inner">
    <div class="row">
        <!-- Columna izquierda: logo -->
        <div class="col">
            <img src="/Trilux_Inmobiliaria/IMG/villa-110-logo.svg" alt="Villa 110"/>
        </div>

        <!-- Columna derecha: todo el texto -->
        <div class="texto">
            
            <!-- Eyebrow con líneas -->
            <div class="rowcito-linea">
                <span class="linea-corta"></span>
                <h3>Tu terreno, tus posibilidades</h3>
                <span class="linea-corta" style="width: 245px; margin-left: 15px;"></span>
            </div>
            
            <!-- Título -->
            <div class="trilux-titulo">
                <h1 class="verde">Villa 110</h1>
                <h1 class="naranja">- Huacho</h1>
            </div>

            <!-- Primer párrafo -->
            <p>
                Villa 110 es un proyecto inmobiliario ubicado en Huacho norte, muy cerca del Gran Mega Puerto de Chancay, pensado para quienes buscan un espacio propio con múltiples posibilidades de desarrollo.
            </p>

            <!-- Íconos -->
            <div class="iconos-info">
                <svg  class="beneficio-svg"  viewBox="0 0 64 64" data-name="Layer 1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><title></title><rect height="8" width="8" x="6" y="54"></rect><rect height="11" width="8" x="21" y="51"></rect><rect height="15" width="8" x="36" y="47"></rect><rect height="24" width="8" x="51" y="38"></rect><rect height="10" width="4.5" x="39" y="18"></rect><rect height="10" width="3" x="44.5" y="18"></rect><rect height="10" width="4.5" x="48.5" y="18"></rect><path d="M30.00146,17.9502l-.002.08007L32,18a14.02975,14.02975,0,0,1,.46582-3.59473l-1.93359-.51269A15.88629,15.88629,0,0,0,30.00146,17.9502Z"></path><path d="M46.01514,34,46,32a14.03255,14.03255,0,0,1-3.6084-.46924L41.877,33.46338A16.04749,16.04749,0,0,0,46,34Z"></path><path d="M41.81494,2.55322a15.905,15.905,0,0,0-3.85351,1.60987L38.96729,5.8916a13.90736,13.90736,0,0,1,3.36914-1.40771Z"></path><path d="M59.52686,21.62256l1.93261.51562A16.057,16.057,0,0,0,62,18v-.06055L60,18A14.04072,14.04072,0,0,1,59.52686,21.62256Z"></path><path d="M59.82861,9.94727l-1.72754,1.00781a13.92209,13.92209,0,0,1,1.41114,3.36767l1.92968-.52441A15.90937,15.90937,0,0,0,59.82861,9.94727Z"></path><path d="M57.27393,6.647a16.03853,16.03853,0,0,0-3.31934-2.53174l-.99512,1.73438a14.04964,14.04964,0,0,1,2.90528,2.21631Z"></path><path d="M30.54932,22.17041a15.91558,15.91558,0,0,0,1.606,3.855l1.7295-1.00488A13.883,13.883,0,0,1,32.481,21.65088Z"></path><path d="M50.0918,2.52832A16.03746,16.03746,0,0,0,46,2h-.04541L46,4a14.03208,14.03208,0,0,1,3.581.46191Z"></path><path d="M58.12939,24.99609a14.04627,14.04627,0,0,1-2.22558,2.89844l1.415,1.41406a16.06769,16.06769,0,0,0,2.542-3.31152Z"></path><path d="M54.01123,31.853,53.0083,30.12256a13.91241,13.91241,0,0,1-3.37158,1.40088l.51855,1.93164A15.93177,15.93177,0,0,0,54.01123,31.853Z"></path><path d="M33.85645,11.02832a14.04574,14.04574,0,0,1,2.21972-2.90283l-1.418-1.41113a16.07144,16.07144,0,0,0-2.53515,3.31591Z"></path><path d="M34.70312,29.33008a16.04284,16.04284,0,0,0,3.31348,2.53857l.999-1.73242a14.06851,14.06851,0,0,1-2.90039-2.22217Z"></path><path d="M14.27051,41H24a1.00071,1.00071,0,0,0,.6001-.2002l6.00311-4.50231-.58954,3.538,1.97266.3291,1-6a1.0001,1.0001,0,0,0-.82178-1.15088l-6-1-.3291,1.97266,3.69519.61572L23.6665,39H14a.998.998,0,0,0-.50391.13623l-12,7,1.00782,1.72754Z"></path><path d="M47.5,12l1.56641-2.16748a1.07439,1.07439,0,0,1,1.88232,1.0332L50,12H48.5v5H55V12H52.618l.11981-.23975a3.07454,3.07454,0,0,0-5.38623-2.957l-1.31982,2.2-1.31983-2.2a3.07456,3.07456,0,0,0-5.38623,2.957L39.4455,12H37v5h6.5V12H42l-.88525-1.13428a1.0744,1.0744,0,0,1,1.88232-1.0332L44.5,12v5h3Z"></path></g></svg>
                <svg class="beneficio-svg" viewBox="0 0 256 256" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="m98.8 207.7c9.6 10 8.9 20.2 8.9 27.8v20h-47.5v-8.4c0-5.5-1.1-9.1-5.4-13.1l-43.6-46.3a40.6 40.6 0 0 1 -9.7-26.3v-69.7a13.2 13.2 0 0 1 26.3 0v51h.1c-7 3.2-11.2 9.6-11.2 16.6a17.6 17.6 0 0 0 5.3 12.5l27 29.8a22.3 22.3 0 0 1 3.8 6.7 14.6 14.6 0 0 1 .6 4.9h8.6a26.1 26.1 0 0 0 -1-7.5 31.8 31.8 0 0 0 -6.1-10.5l-26.7-28.6a10.5 10.5 0 0 1 15.3-14.4zm142.1-129.1a13.2 13.2 0 0 0 -13.2 13.1v51a18.6 18.6 0 0 1 11.2 16.9 17.7 17.7 0 0 1 -5.3 12.5l-27.1 29.7a20.3 20.3 0 0 0 -3.8 6.7 17.7 17.7 0 0 0 -.6 4.9h-8.6a23.1 23.1 0 0 1 1-7.5 30.2 30.2 0 0 1 6.1-10.5l26.7-28.6a10.5 10.5 0 0 0 -15.3-14.4l-55.3 55.5c-9.5 10-8.9 20.2-8.9 27.8v20h47.4v-8.4c0-5.4 1.1-9 5.4-13.1l43.6-46.3a40.6 40.6 0 0 0 9.7-26.3v-69.9a13.1 13.1 0 0 0 -13-13.1zm-174.3 26.7c13.3 12.2 39.2 9.2 48 10.6 9.2 13.4 9.8 16.1 12.8 21.7l3.1-17.3c-3.7-4.4-8.5-8-15.3-14.8-4.2-9.9-9-28.8-19.2-38.2-16.4-14.7-41.3-9.9-43.5-10.5s-2.3 33.8 14.1 48.5zm100.7 53.2a1.4 1.4 0 0 0 -1.4-1.4h-20.6a1.3 1.3 0 0 1 -1.4-1.5c2-14.9 3.5-31.7 7.5-49.4 1.8-8 5.4-16.3 9.5-21.3a1.4 1.4 0 0 1 1.7-.4c14.3 7.1 33.6 2 45.8-13.2s12.1-56 11.9-66.7a1.4 1.4 0 0 0 -2.1-1.2 67.1 67.1 0 0 1 -24.4 9.7c-15.6 3.2-29.9 6.9-37.6 16.4-11.1 13.9-12.8 31.8-5.3 44.2a1.4 1.4 0 0 0 2.4-.1c5.4-9.9 16.9-19.8 26.2-26.7a1.4 1.4 0 0 1 1.8 2.1c-15.1 14.2-29.7 27.1-38.7 54.3-3.7 11.3-5 15.9-8.4 35.7 0 0-1 5.6-1.3 7.1l-1.8 10a1.4 1.4 0 0 1 -1.3 1.1h-34.8a1.4 1.4 0 0 0 -1.4 1.4 36.7 36.7 0 0 0 36.8 34.9c19.9-.1 36.1-15.6 36.9-35z"></path></g></svg>
                </div>

            <!-- Segundo párrafo -->
            <p>
                Nuestros lotes parten desde 200 m², un tamaño ideal para quienes buscan algo más que un terreno: buscan posibilidades. Aquí puedes construir tu vivienda soñada, poner en marcha tu negocio, desarrollar un almacén o invertir con la tranquilidad de saber que estás adquiriendo un activo con visión a futuro.
            </p>
            
        </div><!-- texto -->
    </div>
    <div class="cita-flotante-alt"><!-- ⬇️ CONTENEDOR FLOTANTE -->
    <span class="comilla-decorativa">"</span>
    <p class="cita-texto-alt">
        En <strong>Villa 110</strong> entendemos que cada proyecto es distinto, por eso te ofrecemos terrenos versátiles, bien ubicados y con todo el potencial para crecer. Porque un buen terreno no se mide solo en metros: <strong>se mide en las oportunidades que abre para ti y tu familia.</strong>
    </p>
</div>
        </div>
</div><!-- informacion -->         



         


    <div id="oferta" class="padding ">
        <div class="oferta-contenido">
            <h2>¡SEPARA TU LOTE CON TAN SOLO 500 SOLES!</h2>
        </div>
        
    </div>
    
     <div id="villa-formulario" class="padding">
          <div class ="union-villa row"> <!--contenedor-->
            <div class="col medio-texto texto-animacion">
            <h2>¡A 30 minutos del megapuerto de Chancay!</h2>
              <div class="trilux-titulo">
                <h1 class="verde">villa</h1><h1 class="naranja">110</h1>
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
    </div><!-- villa-formulario -->    
    
  <div class="galeria-seccion" id="galeria-seccion">  
    <div class="galeria-header">
        <h1>LUGARES ESTRATEGICOS</h1>
        <div class="galeria-tabs">
            <button class="tab-btn activo" onclick="cambiarCategoria('areas', this)">Puntos estratégicos</button>
            <button class="tab-btn" onclick="cambiarCategoria('interiores', this)">Visitas</button>
        </div>
    </div>
    <!-- ⬇️ ESTE ES EL BLOQUE QUE FLOTA -->
    <div class="galeria-contenido">
        <div class="galeria-main">
            <button class="galeria-flecha prev" onclick="moverGaleria(-1)">&#10094;</button>
            
            <div class="galeria-track" id="galeria-track">
                <div class="galeria-slide" data-categoria="areas">
                    <img src="/Trilux_Inmobiliaria/IMG/foto-mega-puerto.jpg" alt="Mega-Puerto"/>
                    <span class="galeria-caption">Mega Puerto de Chancay</span>
                    <span class="galeria-descripcion">A tan solo 30 minutos del gran boom económico de Chancay. </span>
                </div>
                <div class="galeria-slide" data-categoria="areas">
                    <img src="/Trilux_Inmobiliaria/IMG/foto-san-marcos.jpg" alt="San Marcos"/>
                    <span class="galeria-caption" style="    bottom: 77px;">San Marcos</span>
                    <span class="galeria-descripcion">Se construye un campus principal en un terreno de 45 hectáreas en el Fundo Santa María ubicado a 8 minutos del Mega Puerto.</span>
                </div>
                <div class="galeria-slide" data-categoria="areas">
                    <img src="/Trilux_Inmobiliaria/IMG/foto-universidad-de-lima.jpg" alt="Universidad de Lima"/>
                    <span class="galeria-caption">Universidad de Lima</span>
                    <span class="galeria-descripcion">Se sitúa a la altura del Kilómetro 90 de la Panamericana Norte, un punto estratégico de ingreso al norte de Chancay.</span>
                </div>
                
                <div class="galeria-slide" data-categoria="areas">
                    <img src="/Trilux_Inmobiliaria/IMG/Tren-barranca-lima.jpg" alt="Tren Barranca-Lima"/>
                    <span class="galeria-caption">Tren Lima - Barranca</span>
                    <span class="galeria-descripcion"> Conectará el Callao con Barranca, pasando por Ancón, Chancay y Huaral. Llegando hasta los los 200 km/h. </span>
                </div>
                
                 <div class="galeria-slide" data-categoria="areas">
                    <img src="/Trilux_Inmobiliaria/IMG/tren-sierra.jpg" alt="Tren Barranca-Lima"/>
                    <span class="galeria-caption"  style="    bottom: 77px;">El Ferrocarril Chancay – Sierra Central</span>
                    <span class="galeria-descripcion">Unirá el Megapuerto de Chancay con los centros mineros de la Sierra Central (Junín, Pasco y Huancavelica), cruzando los Andes a través de túneles y viaductos. </span>
                </div>
                

                <!-- vistitas -->
                <div class="galeria-slide" data-categoria="interiores">
                    <img src="/Trilux_Inmobiliaria/IMG/Foto-1.jpg" alt="Visitas Villa 110"/>
                    <span class="galeria-caption">Visitas guiadas a los lotes</span>
                    </div>
    
                <div class="galeria-slide" data-categoria="interiores">
                    <img src="/Trilux_Inmobiliaria/IMG/explicacion-villa.png" alt="Visitas Villa 110"/>
                    <span class="galeria-caption">Presentación y explicación de los planos</span>
                    </div>
                
                <div class="galeria-slide" data-categoria="interiores">
                    <img src="/Trilux_Inmobiliaria/IMG/visita-puerto.png" alt="Visitas Villa 110"/>
                    <span class="galeria-caption">Visita al Mega Puerto de Chancay</span>
                    </div>
            </div>
            
            <button class="galeria-flecha next" onclick="moverGaleria(1)">&#10095;</button>
            
        </div>
        
        <div>
            
        </div>
        
        <div class="galeria-miniaturas" id="galeria-miniaturas"></div>
    </div> 
</div>
    
 

<div id="plano" class="padding">
        <img src="/Trilux_Inmobiliaria/IMG/plano-villa110.png" " alt="alt" class="img-fluid"/>
    </div><!-- plano -->
    
 <div id="icons-beneficios">
        <div class="beneficios-grid">
    <div class="beneficio-item">
    <div class="beneficio-circulo">
       <svg class="beneficio-svg" fill="#F7F6EC"  xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 256 213" enable-background="new 0 0 256 213" stroke="#F7F6EC">
           <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
           <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
           <g id="SVGRepo_iconCarrier"> 
           <path d="M86.716,84.054l16.57,54.876H70.483L86.716,84.054z M152.714,138.93h32.803l-16.233-54.876L152.714,138.93z M254,65.97 c0,0.499,0,118.961,0,118.961c0,16.481-12.281,26.07-25.053,26.07H27c-12.829,0-25-10.477-25-26.765c0,0,0-117.175,0-117.569 C2,52.056,14.138,41,27.164,41H92V16.275C92,7.513,99.978,2,109.351,2c-0.199,0,36.298,0,36.298,0C155.222,2,163,7.513,163,16.275 V40h65.849C241.818,40,253.902,51.187,254,65.97z M105,41h45V16h-45V41z M193.886,138.93h-2.022h-0.393l-18.086-60.336H132.1v-7.486 c0-2.026-2.022-4.109-4.1-4.109c-2.022,0-4.1,2.026-4.1,4.109v7.542H82.616L64.529,138.93h-0.393h-2.022 c0,13.677,11.065,24.821,24.77,24.821s24.77-11.088,24.77-24.821h-2.359h-0.393L91.827,82.365h32.409v88.027H92.164V183h4.1H128 h31.735h4.1v-12.607h-32.072V82.365h32.409l-17.075,56.565h-0.393h-2.359c0,13.677,11.065,24.821,24.77,24.821 S193.886,152.663,193.886,138.93z"></path> </g>
           </svg> 
    </div>
    <span>Respaldo Legal</span>
</div>
    <div class="beneficio-item">
        <div class="beneficio-circulo">
          <svg class="beneficio-svg"  xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 64 64" enable-background="new 0 0 64 64"  fill="#F7F6EC">
          <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
          <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
          <g id="SVGRepo_iconCarrier"> <g> 
          <path fill="##F7F6EC" d="M32,0C18.745,0,8,10.746,8,24c0,9.843,5.928,18.297,14.406,22h19.188C50.072,42.297,56,33.843,56,24 C56,10.746,45.255,0,32,0z M41,26c-0.553,0-1-0.447-1-1c0-1.104-0.896-2-2-2s-2,0.896-2,2v19h-2V25c0-1.104-0.896-2-2-2 s-2,0.896-2,2v19h-2V25c0-1.104-0.896-2-2-2s-2,0.896-2,2c0,0.553-0.447,1-1,1s-1-0.447-1-1c0-2.209,1.791-4,4-4 c1.201,0,2.267,0.541,3,1.38c0.733-0.839,1.799-1.38,3-1.38s2.267,0.541,3,1.38c0.733-0.839,1.799-1.38,3-1.38c2.209,0,4,1.791,4,4 C42,25.553,41.553,26,41,26z M45,13c-0.742,0.742-1.687-0.313-1.687-0.313C40.418,9.791,36.418,8,32,8c-0.553,0-1-0.447-1-1 s0.447-1,1-1c4.971,0,9.471,2.015,12.729,5.271C44.729,11.271,45.742,12.258,45,13z"></path> 
          <path fill="##F7F6EC" d="M26,64h12c2.211,0,4-1.789,4-4H22C22,62.211,23.789,64,26,64z"></path> 
          <polygon fill="##F7F6EC" points="22,48.004 22,52 42,52 42,48.004 42,48 22,48 "></polygon> 
          <rect x="22" y="54" fill="##F7F6EC" width="20" height="4"></rect> </g> </g></svg> 
        </div>
        <span>Luz</span>
    </div>

    <div class="beneficio-item">
        <div class="beneficio-circulo">
            <svg class="beneficio-svg" viewBox="0 0 1024 1024" fill="#F7F6EC" class="icon"  xmlns="http://www.w3.org/2000/svg">
            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
            <g id="SVGRepo_iconCarrier">
            <path d="M906.895 675.529c0-164.007-45.881-287.583-136.353-367.23-107.742-94.929-237.319-90.326-270.497-87.343h-58.548c-6.849-22.867-29.053-39.805-55.675-39.805h-29.127c-26.622 0-48.826 16.9-55.749 39.805h-205.874v174.466h203.518v17.307c0 30.009 26.107 54.461 58.106 54.461h29.127c32.073 0 58.106-24.413 58.106-54.461v-17.307h60.572l4.676 0.11 5.45-0.699c0.848-0.11 82.335-8.027 141.914 45.55 50.41 45.292 75.891 124.386 75.891 235.148h174.466zM268.173 156.147h210.993c24.985-0.020 45.233-20.27 45.255-45.253v-23.31c-0.020-24.985-20.27-45.233-45.253-45.255h-210.994c0 0 0 0 0 0-25.002 0-45.27 20.257-45.292 45.253v23.346c0.041 24.982 20.304 45.219 45.292 45.219 0 0 0 0 0 0zM852.73 720.157l-29.347-33.249-29.347 33.249c-21.872 24.781-93.271 110.135-93.271 166.659 0 67.606 55.012 122.62 122.62 122.62s122.62-55.012 122.62-122.62c0-56.523-71.325-141.875-93.271-166.659zM823.381 931.187c-24.502-0.041-44.35-19.903-44.371-44.405 0.074-12.117 19.148-44.889 44.371-78.729 25.334 33.767 44.223 66.539 44.371 78.726 0 24.524-19.847 44.407-44.371 44.407z"></path></g>
            </svg>
        </div>
        <span>Agua</span>
    </div>

    <div class="beneficio-item">
        <div class="beneficio-circulo">
            <svg class="beneficio-svg" fill="#F7F6EC" viewBox="0 0 287.592 287.592" xmlns="http://www.w3.org/2000/svg" stroke="#F7F6EC">
            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
            <g id="SVGRepo_iconCarrier">
                <g>
                    <path d="M181.806,62.87c0,4.143,3.357,7.5,7.5,7.5h88.286c4.143,0,7.5-3.357,7.5-7.5c0-4.143-3.357-7.5-7.5-7.5h-88.286 C185.163,55.37,181.806,58.727,181.806,62.87z"></path>
                    <path d="M157.637,45.624h15.669c4.143,0,7.5-3.357,7.5-7.5s-3.357-7.5-7.5-7.5h-15.669c-4.143,0-7.5,3.357-7.5,7.5 S153.494,45.624,157.637,45.624z"></path>
                    <path d="M188.473,38.124c0,4.143,3.357,7.5,7.5,7.5h56c4.143,0,7.5-3.357,7.5-7.5s-3.357-7.5-7.5-7.5h-56 C191.83,30.624,188.473,33.982,188.473,38.124z"></path>
                    <path d="M170.636,20.879h41.337c4.143,0,7.5-3.357,7.5-7.5s-3.357-7.5-7.5-7.5h-41.337c-4.143,0-7.5,3.357-7.5,7.5 S166.493,20.879,170.636,20.879z"></path>
                    <path d="M133.399,173.402c6.79-6.874,10.985-16.317,10.985-26.743c0-1.487-0.095-2.951-0.261-4.394 c8.398-6.151,13.855-16.08,13.855-27.287c0-11.986-6.244-22.509-15.651-28.512c0.413-1.778,0.639-3.629,0.639-5.532 c0-6.236-2.347-11.923-6.202-16.231c0.185-1.42,0.292-2.866,0.292-4.338c0-17.488-13.566-31.799-30.748-33.006 C101.526,17.055,91.096,9.907,78.989,9.907c-12.105,0-22.536,7.149-27.318,17.452c-17.182,1.207-30.748,15.518-30.748,33.006 c0,1.472,0.106,2.918,0.293,4.338c-3.855,4.309-6.203,9.995-6.203,16.231c0,1.903,0.226,3.754,0.639,5.532 C6.244,92.469,0,102.992,0,114.978c0,11.207,5.457,21.136,13.854,27.287c-0.166,1.442-0.261,2.906-0.261,4.394 c0,10.426,4.195,19.869,10.985,26.743c7.528,8.124,18.281,13.212,30.232,13.212c1.633,0,3.242-0.099,4.825-0.283v82.579 c0,7.071,5.622,12.803,12.693,12.803h13.173c7.071,0,12.134-5.731,12.134-12.803v-82.672c1.81,0.243,3.654,0.376,5.53,0.376 C115.119,186.614,125.872,181.526,133.399,173.402z M28.774,107.272c-3.107,1.884-5.04,5.314-5.043,8.951 c-0.004,4.14-3.361,7.493-7.5,7.493c-0.002,0-0.005,0-0.007,0c-4.143-0.004-7.497-3.365-7.493-7.507 c0.009-8.842,4.708-17.181,12.264-21.764c3.542-2.147,8.154-1.019,10.303,2.523C33.445,100.511,32.315,105.123,28.774,107.272z M45.922,62.516c0,4.143-3.357,7.5-7.5,7.5c-4.143,0-7.5-3.357-7.5-7.5c0-14.032,11.416-25.448,25.449-25.448 c4.143,0,7.5,3.357,7.5,7.5c0,4.142-3.357,7.5-7.5,7.5C50.609,52.068,45.922,56.755,45.922,62.516z"></path>
                    <path d="M157.637,272.902c0,4.313,3.813,7.811,8.127,7.811h8.037c4.313,0,7.836-3.497,7.836-7.811v-4.121h-24V272.902z"></path>
                    <path d="M230.637,272.902c0,4.313,3.437,7.811,7.751,7.811h8.037c4.314,0,8.212-3.497,8.212-7.811v-4.121h-24V272.902z"></path>
                    <path d="M277.592,237.349h-22.955v-8.634h11.401c4.143,0,7.5-3.357,7.5-7.5c0-4.143-3.357-7.5-7.5-7.5h-11.401v-11.134h3.148 c4.143,0,7.5-3.357,7.5-7.5c0-4.143-3.357-7.5-7.5-7.5H154.907c-4.143,0-7.5,3.357-7.5,7.5c0,4.143,3.357,7.5,7.5,7.5h2.73v11.134 h-10.981c-4.143,0-7.5,3.357-7.5,7.5c0,4.143,3.357,7.5,7.5,7.5h10.981v8.634h-22.536c-5.523,0-10,4.478-10,10 c0,5.523,4.478,10,10,10h142.491c5.522,0,10-4.477,10-10C287.592,241.827,283.114,237.349,277.592,237.349z M230.637,237.349h-49 v-8.634h49V237.349z M230.637,213.715h-49v-11.134h49V213.715z"></path>
                </g>
            </g>
        </svg>
        </div>
        <span>Parques</span>
    </div>

    <div class="beneficio-item">
        <div class="beneficio-circulo">
            <svg class="beneficio-svg" fill="#F7F6EC" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 293.632 293.632" stroke="#F7F6EC">
            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
            <g id="SVGRepo_iconCarrier"> <g> 
                    <path d="M146.819,57.266c34.299,0,67.766,5.757,99.864,17.101V7.685c0-4.244-3.44-7.685-7.685-7.685h-35.423 c-4.244,0-7.685,3.44-7.685,7.685v28.53c0,0.985-0.8,1.785-1.786,1.785h-17.75c-0.986,0-1.786-0.8-1.786-1.785V7.685 c0-4.244-3.44-7.685-7.685-7.685H126.75c-4.244,0-7.685,3.44-7.685,7.685v28.53c0,0.985-0.8,1.785-1.786,1.785h-17.75 c-0.986,0-1.786-0.8-1.786-1.785V7.685C97.743,3.44,94.303,0,90.058,0H54.636c-4.244,0-7.685,3.44-7.685,7.685v66.683 C79.051,63.023,112.517,57.266,146.819,57.266L146.819,57.266z"></path> 
                    <path d="M189.267,282.617c0,6.083,4.932,11.015,11.015,11.015h35.387c6.083,0,11.015-4.932,11.015-11.015v-37.949h-57.416V282.617z "></path> <path d="M46.951,282.617c0,6.083,4.932,11.015,11.015,11.015h35.387c6.083,0,11.015-4.932,11.015-11.015v-37.949H46.951V282.617z"></path> 
                    <path d="M246.683,217.334v-56.27l-5.593-2.632c-29.819-14.033-61.538-21.148-94.285-21.15c-32.724,0-64.437,7.116-94.261,21.15 l-5.594,2.633v56.27c-4.143,0-7.5,3.357-7.5,7.5s3.357,7.5,7.5,7.5h57.416c4.143,0,7.5-3.357,7.5-7.5 c0-4.105-3.3-7.436-7.392-7.494c1.485-22.098,19.868-39.566,42.342-39.566c22.474,0,40.856,17.468,42.342,39.566 c-4.092,0.059-7.392,3.389-7.392,7.494c0,4.143,3.357,7.5,7.5,7.5h57.416c4.143,0,7.5-3.357,7.5-7.5 S250.826,217.334,246.683,217.334z"></path> 
                    <path d="M264.299,101.152c-1.072-2.799-3.236-5.041-5.996-6.209c-35.727-15.118-73.606-22.678-111.484-22.678 c-37.879,0-75.758,7.56-111.486,22.678c-2.761,1.169-4.929,3.408-6,6.209c-1.072,2.8-0.957,5.915,0.319,8.628l16.507,35.079 c31.988-15.054,66.318-22.58,100.66-22.578c34.333,0.002,68.678,7.527,100.659,22.578l16.507-35.079 C265.26,107.069,265.37,103.951,264.299,101.152z"></path> </g> </g></svg>
        </div>
        <span>Pórtico de Ingreso</span>
    </div>

    <div class="beneficio-item">
        <div class="beneficio-circulo">
            <svg class="beneficio-svg" fill="#F7F6EC"  xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 455.416 455.416" stroke="#F7F6EC">
            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
            <g id="SVGRepo_iconCarrier"> <g> <g> 
            <path d="M235.968,52.552c0.39,9.688,0.778,19.376,1.169,29.064c-7.543,0-11.313,0-18.855,0c0.389-9.688,0.779-19.376,1.167-29.064 c-15.295,0-30.589,0-45.884,0c-30.747,116.771-61.499,233.539-92.245,350.312c41.352,0,82.704,0,124.055,0 c0.389-9.689,0.778-19.377,1.168-29.064c14.111,0,28.222,0,42.332,0c0.392,9.688,0.78,19.375,1.168,29.064 c41.352,0,82.703,0,124.055,0c-30.747-116.771-61.498-233.54-92.245-350.312C266.559,52.552,251.264,52.552,235.968,52.552z M216.531,125.133c7.451,0,14.902-0.004,22.354-0.002c1.082,26.939,2.163,53.88,3.247,80.818c-9.616,0-19.231,0-28.848,0 C214.37,179.012,215.45,152.072,216.531,125.133z M208.29,330.282c1.081-26.938,2.165-53.877,3.247-80.815 c10.781,0,21.562-0.002,32.342-0.002c1.083,26.938,2.166,53.879,3.247,80.817C234.182,330.282,221.235,330.282,208.29,330.282z"></path> 
            <path d="M311.929,52.552c-6.248,0-9.373,0-15.621,0c38.961,116.771,77.913,233.541,116.876,350.312c14.077,0,28.155,0,42.232,0 C407.589,286.091,359.759,169.323,311.929,52.552z"></path> 
            <path d="M143.487,52.552C95.657,169.324,47.826,286.091,0,402.864c14.078,0,28.155,0,42.233,0 c38.958-116.771,77.915-233.54,116.875-350.312C152.86,52.552,149.735,52.552,143.487,52.552z"></path> 
            </g> </g> </g></svg>
        </div>
        <span>Panamericana Norte </span>
    </div>

    <div class="beneficio-item">
        <div class="beneficio-circulo">
            <svg class="beneficio-svg" fill="#F7F6EC" xmlns="http://www.w3.org/2000/svg" x viewBox="0 0 512 512" stroke="#F7F6EC">
            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
            <g id="SVGRepo_iconCarrier"> <g> <g> 
            <path d="M504.984,407.552c-4.486-4.37-10.547-6.739-16.809-6.578c-33.187,0.855-64.219-6.478-92.22-26.71 c-25.3-18.279-45.075-44.849-61.547-71.479c-9.209-14.888-17.894-33.443-42.745-52.21c-30.764-23.236-71.898-33.537-109.531-33.63 v-50.912l55.611,41.751c25.235,6.452,49.633,17.687,70.077,34.915c18.506,15.595,27.542,30.093,35.339,43.223l10.051-4.423 l5.98,29.697c12.223,17.828,24.964,32.867,39.287,44.615c1.685-3.255,2.321-7.08,1.541-10.952l-18.14-90.084 c-0.993-4.926-4.152-9.143-8.601-11.481c-4.449-2.336-9.714-2.544-14.333-0.566l-23.457,10.049 c-6.28-25.238-8.436-33.902-14.58-58.596l56.505-77.152c4.538-6.196,3.194-14.9-3.003-19.439 c-6.197-4.539-14.898-3.194-19.44,3.003l-57.133,78.01l-38.956,10.266l-76.747-57.619v-9.2c0-5.202-2.352-10.126-6.399-13.395 l-75.536-61.009c-5.327-4.302-12.935-4.302-18.263,0L6.399,108.655C2.353,111.925,0,116.848,0,122.05v337.033 c0,4.693,3.805,8.497,8.497,8.497h20.366c4.693,0,8.498-3.805,8.498-8.497v-90.074h107.411v90.074 c0,4.693,3.805,8.497,8.497,8.497h4.179c0.21,0,0.275,0,0.266,0h15.921c4.693,0,8.498-3.805,8.498-8.497V284.537 c18.986,2.052,43.324,7.407,65.79,20.479c18.565,10.803,33.309,25.424,43.879,43.523c23.311,39.917,44.09,65.968,67.373,84.471 c38.645,30.711,83.079,38.657,132.495,32.511c0.009-0.001,0.019-0.002,0.029-0.003C503.326,464.062,512,454.201,512,442.482v-18.3 C512,417.919,509.469,411.922,504.984,407.552z M144.772,339.822L144.772,339.822H37.361v-40.863h107.411V339.822z M144.772,269.771L144.772,269.771H37.361v-42.007h107.411V269.771z"></path> </g> </g> <g> <g> 
            <path d="M448.619,294.203c-58.083-46.371-53.978-43.173-55.356-44.016c0.486,1.719-0.339-2.18,10.325,50.777l24.206,19.325 c7.204,5.752,17.706,4.571,23.456-2.631C457.001,310.456,455.823,299.954,448.619,294.203z"></path> </g> </g> <g> <g> <circle cx="271.262" cy="146.57" r="32.45"></circle> </g> </g> </g>
            </svg>
        </div>
        <span>Juegos para niños</span>
    </div>
</div>
    </div><!-- icons-beneficios -->

    <div id="testimonios" class="padding">
        <h2>#Yo confio en Trilux</h2>
        <div class="row">
            <div class="gap-test">
                <div class="icon-test">
                    <img src="/Trilux_Inmobiliaria/IMG/mega-puerto.jpg" alt="foto-de-perfil"/>
                    <div class="display-test">
                        <h3>NOMBRE APELLIDO</h3>
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i>
                    </div>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            
            <div class="gap-test">
                <div class="icon-test">
                    <img src="/Trilux_Inmobiliaria/IMG/mega-puerto.jpg" alt="foto-de-perfil"/>
                    <div class="display-test">
                        <h3>NOMBRE APELLIDO</h3>
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i>
                    </div>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            
           <div class="gap-test">
                <div class="icon-test">
                    <img src="/Trilux_Inmobiliaria/IMG/mega-puerto.jpg" alt="foto-de-perfil"/>
                    <div class="display-test">
                        <h3>NOMBRE APELLIDO</h3>
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i>
                    </div>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="gap-test">
                <div class="icon-test">
                    <img src="/Trilux_Inmobiliaria/IMG/mega-puerto.jpg" alt="foto-de-perfil"/>
                    <div class="display-test">
                        <h3>NOMBRE APELLIDO</h3>
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i><i class="bi bi-star-fill separacion"></i>
                    </div>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
        </div><!-- row -->
    </div><!-- testimonios -->
    

    
        <div id="visitanos">
        <div class="row">  
       <i class="bi bi-crosshair2"></i>
        <h2>Visítanos en:</h2>
        </div><!-- row -->
    </div>
    <div id="mapa-oficina">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d243.79583046632501!2d-76.97728160018116!3d-12.1303924443209!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105b918fdc0af93%3A0x9c0dec2210bb28a1!2sCOPEDSA!5e0!3m2!1ses!2spe!4v1789406989916!5m2!1ses!2spe" 
                width="100%" 
                height="500" 
                style="border:0;" 
                allowfullscreen=""
                loading="lazy" 
            referrerpolicy="strict-origin-when-cross-origin">

        </iframe>
    </div><!-- mapa -->

    <div id="frase" class="padding">
        <h2>#Hablemos de tu próxima inversión con</h2>
        <div class="trilux-titulo">
            <h1 class="verde">TRI</h1><h1 class="naranja">LUX</h1>
        </div>
    </div>

    <div id="Contactos" class="padding" style="background-color: #024023; padding-bottom: 40px; padding-top: 60px;">
    <div class="footer-grid">
    <div class="col2">
        <span class="primera-fila"><img src="/Trilux_Inmobiliaria/IMG/LOGO.PNG.png"></span>
    </div>
    <div class="segunda-fila">
        <span>CONOCENOS</span>
        <span style="margin-top:30px;">BLOG</span>
    </div>
    <div class="tercera-fila">
        <span>CONTACTOS</span>
        <span style="margin-top:30px;">COMPRA DE TERRENOS</span>
    </div>
    <div class="cuarta-fila">
        <span>AV. Circunvalación 307-Santiago de Surco 1583</span>
        <div class="icon">
            <a href="https://wa.me/51920471135" target="_blank" rel="noopener noreferrer" style="color:white;"><i class="bi bi-whatsapp"></i></a>
            <a href="https://www.facebook.com/TriluxInmobiliariaof/#" target="_blank" rel="noopener noreferrer" style="color:white;"><i class="bi bi-facebook" style="margin-left: 20px;"></i></a>
            <a href="https://www.instagram.com/trilux_inmobiliaria/" target="_blank" rel="noopener noreferrer" style="color:white;"><i class="bi bi-instagram"  style="margin-left: 20px;"></i></a>
            <a href="https://www.tiktok.com/@trilux_inmobiliaria?is_from_webapp=1&sender_device=pc" target="_blank" rel="noopener noreferrer" style="color:white;" ><i class="bi bi-tiktok" style="margin-left: 20px;"></i></a>
        </div>
    </div>
    <div class="quinta-fila">
        <span>RAZON SOCIAL:</span>
        <span>RUC:</span>
    </div>
</div>
       
        
     <div class="row">
            <div class="col col8 numero-x">
                 <span style=" margin: 0px; font-size: 25px;">
                     +51 920 471 135
                 </span>
            </div>
        <div class="col col8 segunda-fila">
            <p>Horario de atención Call Center: De lunes a viernes de 10:00 am a 6:00 pm</p>
        </div>
            <div class="col col8 tercera-fila">
                <p>Horario de oficina: De lunes a viernes de 10:00am a 6:00pm</p>
            </div>
            <div class="col col8 cuarta-fila">
            </div>
            <div class="col col8 quinta-fila">
            </div> 
        </div><!--row-->
    </div>
</div><!-- contactos -->
         
        <footer id="derechos">
            <div class="display">
                <span>Copyright © 2026 TRILUX INMOBILIARIA</span>
                <span>|</span>
                <span>TODOS LOS DERECHOS RESERVADOS</span>
            </div>
        </footer>
   
    <a href="#" id="ir-arriba">
    <img src="/Trilux_Inmobiliaria/IMG/TRILUX-INICIO.png" alt="Subir-arriba">
</a>

          
<script>
document.addEventListener("DOMContentLoaded", function () {
    const seccion = document.getElementById('oferta');
    const contenido = seccion.querySelector('.oferta-contenido');

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                contenido.classList.add('visible');
                // Deja de observar → la animación solo se ejecuta UNA VEZ
                observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.4   // Se dispara cuando el 40% del elemento es visible
    });

    observer.observe(seccion);
});
</script>



      <script> <!-- codigo para carrusel -->
    const carrusel = document.querySelector('.carrusel');
    const slides = carrusel.querySelectorAll('.elemento');
    let indice = 0;

    function siguienteSlide() {
        indice++;
        if (indice >= slides.length) {
            indice = 0;    // vuelve al inicio
        }
        carrusel.scrollTo({
            left: carrusel.clientWidth * indice,
            behavior: 'smooth'
        });
    }

    // Cambia cada 4 segundos
    let intervalo = setInterval(siguienteSlide, 4000);

    // Pausa cuando el usuario pasa el mouse por encima
    carrusel.addEventListener('mouseenter', () => clearInterval(intervalo));
    carrusel.addEventListener('mouseleave', () => {
        intervalo = setInterval(siguienteSlide, 4000);
    });
</script>

 <script> <!-- codigo para navbar -->
    window.addEventListener('scroll', function() {
        const navbar = document.getElementById('navbar');
        if (window.scrollY > 50) {          // cuando bajes más de 50px
            navbar.classList.add('fixed');
        } else {
            navbar.classList.remove('fixed');
        }
    });
</script>
    
    <script><!-- SCROLL -->
    const btnArriba = document.getElementById('ir-arriba');

    window.addEventListener('scroll', function() {
        if (window.scrollY > 500) {
            btnArriba.style.display = 'flex';
        } else {
            btnArriba.style.display = 'none';
        }
    });

    btnArriba.addEventListener('click', function(e) {
        e.preventDefault();
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });
</script>
    
   <script>
document.addEventListener("DOMContentLoaded", function () {
    const track = document.getElementById('galeria-track');
    const contenedorMiniaturas = document.getElementById('galeria-miniaturas');

    if (!track || !contenedorMiniaturas) return;

    const todasLasSlides = Array.from(track.children);
    let slidesActivas = [];
    let indiceGaleria = 0;

    // ====== Crear TODAS las miniaturas UNA SOLA VEZ al cargar ======
    const todasMiniaturas = todasLasSlides.map((slide, i) => {
        const imgOriginal = slide.querySelector('img');
        const mini = document.createElement('div');
        mini.classList.add('miniatura');
        mini.dataset.categoria = slide.getAttribute('data-categoria');

        const imgMini = document.createElement('img');
        imgMini.src = imgOriginal.src;
        imgMini.alt = `miniatura ${i + 1}`;
        mini.appendChild(imgMini);

        contenedorMiniaturas.appendChild(mini);
        return mini;
    });

    // ====== Filtrar SIN destruir: solo oculta/muestra ======
    function inicializarGaleria(categoria) {
        indiceGaleria = 0;

        todasLasSlides.forEach(slide => {
            const pertenece = slide.getAttribute('data-categoria') === categoria;
            slide.style.display = pertenece ? '' : 'none';
        });

        todasMiniaturas.forEach(mini => {
            const pertenece = mini.dataset.categoria === categoria;
            mini.style.display = pertenece ? '' : 'none';
        });

        slidesActivas = todasLasSlides.filter(s => s.getAttribute('data-categoria') === categoria);
        if (slidesActivas.length === 0) slidesActivas = todasLasSlides;

        // Reinicia el scroll al principio sin animación al cambiar de categoría
        track.scrollTo({ left: 0, behavior: 'instant' });
        actualizarMiniaturaActiva();
    }

    function actualizarGaleria() {
        if (slidesActivas.length === 0) return;
        const anchoSlide = slidesActivas[0].offsetWidth +
            parseInt(window.getComputedStyle(track).gap || 0);

        track.scrollTo({
            left: indiceGaleria * anchoSlide,
            behavior: 'smooth'
        });

        actualizarMiniaturaActiva();
    }

    function actualizarMiniaturaActiva() {
        const miniaturasVisibles = todasMiniaturas.filter(m => m.style.display !== 'none');
        miniaturasVisibles.forEach((m, i) => {
            m.classList.toggle('activa', i === indiceGaleria);
        });
    }

    window.moverGaleria = function (direccion) {
        if (slidesActivas.length === 0) return;
        indiceGaleria = (indiceGaleria + direccion + slidesActivas.length) % slidesActivas.length;
        actualizarGaleria();
    };

    window.irASlide = function (i) {
        indiceGaleria = i;
        actualizarGaleria();
    };

    window.cambiarCategoria = function (categoria, boton) {
        document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('activo'));
        boton.classList.add('activo');
        inicializarGaleria(categoria);
    };

    inicializarGaleria('areas');
});
</script>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const btnMasInfo = document.getElementById('btn-mas-info');
    const panelInfo = document.getElementById('Informacion');

    if (btnMasInfo && panelInfo) {
        btnMasInfo.addEventListener('click', function () {
            // Alterna el estado abierto/cerrado
            panelInfo.classList.toggle('abierto');
            // Cambia el estilo del botón
            btnMasInfo.classList.toggle('activo');

            // Cambia el texto del botón según el estado
            const textoBtn = btnMasInfo.childNodes[0]; // El primer nodo de texto
            if (panelInfo.classList.contains('abierto')) {
                textoBtn.textContent = 'Cerrar ';
            } else {
                textoBtn.textContent = 'Más info ';
            }

            // Opcional: hace scroll suave hasta el panel cuando se abre
            if (panelInfo.classList.contains('abierto')) {
                setTimeout(() => {
                    panelInfo.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }, 300);
            }
        });
    }
});
</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {

    // ====== ANIMACIÓN SECCIÓN QUIENES SOMOS ======
    const seccionSomos = document.getElementById('futuro-huacho');
    const bloqueImagen = document.querySelector('.futuro-imagen');
    const bloqueTexto = document.querySelector('.futuro-texto');

    const observerSomos = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                
                // 1. Primero sube la imagen
                 bloqueTexto.classList.add('visible');
                

                // 2. Después de 700ms, aparece el texto
                setTimeout(() => {
                                  
                 bloqueImagen.classList.add('visible');}, 700);

                // Dejamos de observar para que no se repita
                observerSomos.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.3 // Se activa cuando el 30% es visible
    });

    if (seccionSomos) {
        observerSomos.observe(seccionSomos);
    }
});
</script>
    </body>
</html>