
<jsp:include page="carrusel.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Style.css">

<style>
    /* 1. Definimos la animación llamada "subirDesdeAbajo" */

    .padding{
        padding: 100px;
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

        /* ============================================
   SECCIÓN CTA — LOTES CON UBICACIÓN ESTRATÉGICA
   ============================================ */
#formulario-unión {
    position: relative;
    background-image: url('/Trilux_Inmobiliaria/IMG/sin-derecho.jpg');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    padding: 100px 60px;
    overflow: hidden;
}

/* Capa verde oscura sobre la imagen parallax */
#formulario-unión::before {
    content: "";
    position: absolute;
    inset: 0;
    background-color: rgba(2, 45, 24, 0.85);
    z-index: 0;
}

/* Fila que contiene texto + formulario */
#formulario-unión .row-cta {
    position: relative;
    z-index: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 40px;
    max-width: 1300px;
    margin: 0 auto;
    flex-wrap: wrap;
}

/* ===== CAJA VERDE CON TEXTO ===== */
.col-texto {
    padding: 55px 60px;
    border-radius: 16px;
    border-left: 5px solid #ff9900;
    max-width: 640px;
    flex: 1;
    min-width: 320px;
}

/* Eyebrow (línea + texto pequeño arriba) */
.eyebrow-cta {
    display: flex;
    align-items: center;
    gap: 14px;
    color: #ffcb5ceb;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 2.5px;
    text-transform: uppercase;
    margin-bottom: 22px;
    font-family: "Titillium Web", sans-serif;
}


/* Título grande */
.titulo-cta {
    font-family: "Black Ops One", system-ui;
    font-size: 52px;
    line-height: 1.1;
    margin: 0 0 20px 0;
    text-transform: uppercase;
}

.titulo-cta .palabra-1,
.titulo-cta .palabra-2 {
    color: #ffffff;
}

.titulo-cta .palabra-3,
.titulo-cta .palabra-4 {
    color: #ffcc00;
}

.titulo-cta span{
     font-family: "Black Ops One", system-ui;
}

/* Subtítulo */
.subtitulo-cta {
    color: white;
    font-family: "Titillium Web", sans-serif;
    font-size: 17px;
    line-height: 1.6;
    margin-bottom: 32px;
    font-weight: 400;
    text-align: left;
    font-weight: 600;
}

/* Botón "Aquí →" */
.aqui-flecha {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 14px;
    background-color: #ffcc00;
    padding: 16px 38px;
    border-radius: 50px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
    width: fit-content;
}

.aqui-flecha:hover {
    background-color: #ff9900;
    transform: translateX(5px);
}

.aqui-flecha span {
    color: #01331c;
    font-size: 17px;
    font-weight: 700;
    letter-spacing: 1px;
}

/* ===== FORMULARIO DESPLEGABLE ===== */
.col-form-cta {
    max-width: 0;
    opacity: 0;
    overflow: hidden;
    transform: translateX(-30px);
    transition: max-width 0.6s ease, opacity 0.5s ease 0.15s, transform 0.6s ease;
}

.col-form-cta.mostrar {
    max-width: 450px;
    opacity: 1;
    transform: translateX(0);
}

.col-form-cta .form-card {
    background-color: #0f2b1f;
    padding: 35px 30px;
    border-radius: 15px;
    min-width: 380px;
    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.4);
}

.col-form-cta .form-titulo {
    color: #ff9900;
    font-size: 26px;
    margin: 0 0 20px 0;
}

.col-form-cta .form-group {
    margin-bottom: 15px;
    display: flex;
    flex-direction: column;
    color: white;
}

.col-form-cta label {
    font-size: 13px;
    margin-bottom: 6px;
    font-weight: bold;
}

.col-form-cta .form-group input {
    border: none;
    padding: 12px;
    font-size: 14px;
    border-radius: 4px;
    font-family: "Titillium Web", sans-serif;
}

.col-form-cta .btn-contacto {
    width: 100%;
    background-color: #ff9900;
    color: #0d1117;
    border: none;
    padding: 14px;
    font-weight: bold;
    font-size: 14px;
    cursor: pointer;
    border-radius: 4px;
    margin-top: 10px;
    transition: background-color 0.3s;
    font-family: "Titillium Web", sans-serif;
}

.col-form-cta .btn-contacto:hover {
    background-color: #27ae60;
}

/* Responsive: en pantallas chicas el form se pone debajo */
@media (max-width: 900px) {
    #formulario-unión {
        padding: 60px 20px;
    }
    .titulo-cta {
        font-size: 38px;
    }
    .col-texto {
        padding: 40px 30px;
    }
}
#proyectos{
    background: linear-gradient(356deg, #1f5d40 0%, #022515 100%);
}

.botones-proyectos {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    gap: 30px;
    flex-wrap: wrap;
}
.tarjeta-wrapper{
    flex: 1;
    overflow: visible;
}
.tarjeta-wrapper .proyecto-card {
    opacity: 0;
    transform: translateX(-300px); /* Empieza totalmente fuera */
    transition: opacity 1s ease-out, transform 1s ease-out;
    width: 100%;
    margin: 0;
}

.tarjeta-wrapper.visible .proyecto-card {
    opacity: 1;
    transform: translateX(0);
}
.proyecto-card {
    position: relative;
    margin: 0;
    min-width: 300px;
    max-width: 600px;
    height: 400px;
    border-radius: 20px;
     flex: 1;
    overflow: hidden;
}

.proyecto-card img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    transition: transform 0.5s ease-in-out;
}

.proyecto-card:hover img {
    transform: scale(1.1);
}

.overlay-proyecto {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: #0d1117c2;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    padding: 30px;
    box-sizing: border-box;
    opacity: 0;
    visibility: hidden;
    transition: all 0.4s ease-in-out;
}

.proyecto-card:hover .overlay-proyecto {
    opacity: 1;
    visibility: visible;
}

.overlay-proyecto h3 {
    color: #ff9900;
    font-family: "Black Ops One", system-ui;
    font-size: 28px;
    margin-bottom: 15px;
    
}

.overlay-proyecto p {
    color: white;
    font-size: 15px;
    line-height: 1.5;
    max-width: 70%;
    display: -webkit-box;
    -webkit-line-clamp: 3; /* fuerza máximo 3 líneas, corta con "..." si sobra */
    -webkit-box-orient: vertical;
    overflow: hidden;
    margin-bottom: 20px;
}

.btn-proyecto {
    background-color: #ff9900;
    color: #01331c;
    padding: 12px 28px;
    border-radius: 4px;
    font-weight: bold;
    text-decoration: none;
    font-size: 14px;
}

.btn-proyecto:hover {
    background-color: #01331c;
    color: #ff9900;
}

.titulo-proyectos{
    margin-bottom: 50px;
    opacity: 0;
    transform: translateX(-100px);
    transition: opacity 1s ease-out, transform 1s ease-out;
}
.titulo-proyectos.visible {
    opacity: 1;
    transform: translateX(0);
}
.titulo-proyectos h3{
    font-size: 30px;
    text-transform: capitalize;
    font-family: "Black Ops One", system-ui;
}

.linea{
    height: 3px;
    background-color: #ff9900;
    margin: 18px auto 0; 
}

.titulo-proyectos .color-a {
        color: white; font-family: "Black Ops One", system-ui; 
}

.titulo-proyectos .color-b {
    color: #ff9900; font-family: "Black Ops One", system-ui; 
}
#quienes-somos{
    background-color: #F2EDD5;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-top: 0px;
     overflow: hidden;
}

.row-somos {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 60px;
    flex-wrap: wrap;
    margin: 0 auto;
}

.col-imagen-somos {
    flex: 1;
    flex-basis: 0;
    flex-grow: 1;
    padding-left: 15px;
    padding-right: 15px;
    box-sizing: border-box;
   
    
}
.animar-subir{
    opacity: 0;
    transform: translateY(80px);
    transition: opacity 1s ease-out, transform 1s ease-out;
}
.animar-subir.visible {
    opacity: 1;
    transform: translateY(0);
}
.col-imagen-somos img {
    width: 100%;
    height: auto;
    display: block;
}
.col-imagen-somos.animar-subir {
    transition: opacity 0.9s ease-out, transform 0.9s ease-out;
}


.col-texto-somos {
    flex: 1;
    min-width: 300px;
}

.col-texto-somos .texto-cuatro-lineas {
    color: #6D6D65;
    font-size: 20px;
    line-height: 1.7;
}
.col-texto-somos.animar-subir {
    transition: opacity 1.2s ease-out, transform 1.2s ease-out;
}

.wel-img {
    display: flex;
    flex-direction: column;
    justify-content: center;
    background-attachment: fixed;
}

#unete {
    background: linear-gradient(45deg, #e6e6e6, #cecece);
    text-align: center;
}

#unete img {
    border-radius: 12px;
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.4);
    width: 100%;
}



#unete-contenedor {
    position: relative;
    overflow: hidden;       /* para que el zoom no se salga del marco */
    border-radius: 12px;
    margin: 0 auto;  
}

.unete-img {
    display: block;
    transition: transform 0.4s ease-in-out;
    transition: .5s all ease-in-out;
    box-shadow: 0 0 64px rgb(0, 0, 0); 
    /* la sombra alrededor 0 → sin desplazamiento horizontal (sombra pareja a los lados)
20px → qué tanto "cae" la sombra hacia abajo (más alto = más flotante se ve)
50px → qué tan difuminada/suave es (más alto = más suave y extendida)
rgba(0,0,0,0.4) → color y opacidad (0.4 = 40% de opacidad, ajusta si la quieres más tenue o más marcada)  */
}

#unete-contenedor:hover .unete-img {
    transform: scale(1.05); /* zoom sutil, ajusta el valor si quieres más/menos */
    transition: .5s all ease-in-out;

}

.btn-mas-info {
    position: absolute;
    left: 8%;
    top: 79%;
    background-color: #fffcf8;
    color: #01331c;
    font-weight: bold;
    text-decoration: none;
    padding: 17px 24px;
    border-radius: 30px;
    font-size: 15px;
    z-index: 2;
    box-shadow: 0 10px 13px rgba(0, 0, 0, 0.3);
    transition: background-color 0.3s;
}

.btn-mas-info:hover {
    background-color: #ffcc00;
}

 .beneficios-grid {
     display: grid;
    grid-template-columns: repeat(3, auto);
    gap: 25px 40px;
    justify-content: start;
}

.beneficio-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 160px;
    text-align: center;
    /* Animación: nombre, duración, frenado, y que se quede al final */
    /* solos ccs animation: subirDesdeAbajo 1s ease-out forwards;
    
    /* Estado inicial: invisible hasta que empiece su animación */
    /***opacity: 0; */
    transition: opacity 1s ease-out, transform 1s ease-out;
     /* Estado final (visible) */
    opacity: 1;
    transform: translateY(0)
}

.beneficio-item.oculto {
    opacity: 0;
    transform: translateY(80px); /* 80px más abajo */
}

/**.beneficio-item:nth-child(1) { child uno por uno css
    animation-delay: 0.2s;
}
/* El segundo espera un poco más 
.beneficio-item:nth-child(2) {
    animation-delay: 0.6s; 
}*/

.beneficio-circulo {
   width: 130px;
    height: 130px;
    border-radius: 50%;
    border: 3px solid #ffcb5ceb;
    outline: 2px solid #ffcb5ceb;
    outline-offset: 4px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 18px; 
}

.beneficio-circulo i {
    font-size: 46px;
    color: white;
}

.beneficio-item span {
    color: #ffcb5ceb;
    font-size: 20px;
    font-weight: 600;
    line-height: 1.3;
}

.beneficio-svg {
    width: 60px;   /* controla el tamaño del ícono dentro del círculo */
    height: 60px;
}
.clientes-h3{
    display: flex;
    justify-content: space-around;
    align-items: center;
    align-content: space-around;
    font-size: 60px;
    color: ghostwhite;
    letter-spacing: 3.5px;  
}


.col-texto {
    padding: 50px 60px;
    border-radius: 16px;
    border-left: 5px solid #ff9900;
    text-align: center;
    max-width: 640px;
}

.titulo-cta {
    line-height: 1.35;
    margin-bottom: 18px;
    text-align: left;
}

.titulo-cta .base { color: #ffffff; font-weight: 400; }
.titulo-cta .acento { color: #ff9900; }

.subtitulo-cta {
    font-family: "Titillium Web", sans-serif;
    color: white;
    text-transform: none;
    margin-bottom: 26px;
}

.aqui-flecha {
    display: inline-flex;
    align-items: center;
    gap: 14px;
    background-color: #ff9900;
    padding: 14px 30px;
    border-radius: 30px;
    cursor: pointer;
    width: fit-content;
    margin: 0 auto;
    transition: background-color 0.3s;
}

.aqui-flecha:hover {
    background-color: #ffcc00;
}

.aqui-flecha span {
    color: #01331c;
    font-size: 18px;
    font-weight: 700;
}

.aqui-flecha svg line,
.aqui-flecha svg polygon {
    stroke: #01331c;
    fill: #01331c;
}

#proyectos {
    background: linear-gradient(179deg, #1f5d40 0%, #022515 100%);
    overflow: hidden;
}

.row-proyectos {
    display: flex;
    align-items: center;
    gap: 60px;
    max-width: 1300px;
    margin: 0 auto;
    flex-wrap: wrap;
}

.col-texto-proyectos {
    flex: 1;
    min-width: 320px;
    color: white;
}

.eyebrow-proyectos {
    display: flex;
    align-items: center;
    gap: 14px;
    color: #ffcb5ceb;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 20px;
}

.eyebrow-proyectos .linea-corta {
    width: 40px;
    height: 2px;
    background-color: #ffcc00;
}

.titulo-proyectos-hero {
    font-family: "Black Ops One", system-ui;
    font-size: 48px;
    line-height: 1.25;
    margin-bottom: 25px;
}

.titulo-proyectos-hero .linea-blanca { color: white; display: block; }
.titulo-proyectos-hero .linea-naranja { color: #ffcc00; display: block; }

.descripcion-proyectos {
    font-size: 17px;
    line-height: 1.6;
    color: #d7e8dc;
    max-width: 480px;
    margin-bottom: 40px;
}

.iconos-fila {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 18px;
}

.icono-item {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 10px;
}

.icono-item i {
    font-size: 26px;
    color: #ffcc00;
}

.icono-item span {
    font-size: 13px;
    font-weight: 700;
    text-transform: uppercase;
    line-height: 1.4;
}

.divisor-icono {
    width: 1px;
    height: 45px;
    background-color: rgba(255,255,255,0.2);
}

.col-imagenes-proyectos {
    flex: 1;
    min-width: 280px;
    display: flex;
    flex-direction: column;
    gap: 30px;
}

.proyecto-card-apilada {
    position: relative;
    margin: 0;
    border-radius: 20px;
    overflow: hidden;
    height: 280px;
}

.proyecto-card-apilada::before {
    content: "";
    position: absolute;
    inset: -10px -10px -10px auto;
    width: calc(100% + 10px);
    border: 2px solid #ffcc00;
    border-radius: 20px;
    z-index: 0;
    pointer-events: none;
    top: -10px;
    left: 10px;
}

.proyecto-card-apilada img {
    position: relative;
    z-index: 1;
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    transition: transform 0.5s ease-in-out;
}

.proyecto-card-apilada:hover img {
    transform: scale(1.08);
}

    /* CARRUSEL DE VISITAS*/
#carrusel{
    background-color: #F7F6EC;
}
#carrusel h1{
    text-align: center;
    font-size: 100px;
    letter-spacing: 4px;
    color:  #ff9900;
}
 .carrusel-auto-wrapper {
    padding: 60px 0;
    overflow: hidden;
    width: 100%;
}

.carrusel-auto-track {
    display: flex;
    gap: 25px;
    width: max-content;
    animation: desplazar 25s linear infinite;
}

.carrusel-auto-wrapper:hover .carrusel-auto-track {
    animation-play-state: paused; /* se pausa al pasar el mouse, opcional */
}

.carrusel-auto-item {
    position: relative;
    width: 280px;
    height: 360px;
    border-radius: 14px;
    overflow: hidden;
    flex-shrink: 0;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
}

.carrusel-auto-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.carrusel-auto-item span {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    background: linear-gradient(transparent, rgba(0,0,0,0.75));
    color: white;
    font-weight: 700;
    font-size: 16px;
    padding: 40px 18px 16px;
}



@keyframes desplazar {
    from { transform: translateX(0); }
    to { transform: translateX(-50%); } /* se mueve exactamente la mitad: donde empieza la repetición */
}
</style>
<div id="quienes-somos" class="padding" style="background-color: #F7F6EC;">
    <div class="row-somos">
        <div class="col-imagen-somos wel-img animar-subir">
            <img src="/Trilux_Inmobiliaria/IMG/trillux.png" class="img-fluid"alt="Trilux equipo"/>
        </div>

        <div class="col-texto-somos animar-subir">
            
            <div class="trilux-titulo" style="gap: 10px;" >
                <h1 class="verde">invierte hoy</h1><h1 class="naranja">y crece mañana</h1>
               </div>
            <p class="texto-cuatro-lineas">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum sem vel mi
                sagittis, id pulvinar turpis convallis. Ut non feugiat ex. Curabitur sed nisl eget
                erat dictum finibus. Class aptent taciti sociosqu ad litora torquent per conubia
                nostra, per inceptos himenaeos. Integer id efficitur tellus.
            </p>
        </div>
    </div>
</div><!-- quienes somos -->


<div id="proyectos" class="padding">
    <div class="titulo-proyectos animar-izquierda">
    <div class="row-proyectos">
        <div class="col-texto-proyectos">
            <div class="eyebrow-proyectos">
                <span class="linea-corta"></span>
                Invierte hoy, construye mañana
            </div>

            <h2 class="titulo-proyectos-hero">
                <span class="linea-blanca">Un Proyecto Pensado</span>
                <span class="linea-naranja">Para Tu Futuro</span>
            </h2>

            <p class="descripcion-proyectos">
                En Trilux desarrollamos proyectos inmobiliarios con visión, calidad y compromiso,
                para que tus sueños de hoy se conviertan en patrimonio mañana.
            </p>
            <div id="clientes">
       <div id="icons-beneficios">
        <div class="beneficios-grid">
    <div class="beneficio-item oculto" id="animacion-item">
    <div class="beneficio-circulo">
       <svg fill="#F7F6EC" class="beneficio-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 511.999 511.999">
       <g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
       <g id="SVGRepo_iconCarrier"> <g> <g> 
       <path d="M495.83,111.302c-9.217,0-17.141,7.473-17.141,16.696v16.807H353.265c-18.087,0-35.376,7.329-47.81,20.464 c0.162-0.173-36.785,37.554-71.79,73.651V133.562h16.807c15.494,0,22.578-19.336,10.864-29.37L144.467,4.019 c-6.25-5.358-15.478-5.358-21.728,0L5.869,104.193c-11.723,10.041-4.621,29.37,10.864,29.37h16.696v116.87 c0,9.217,7.473,16.696,16.696,16.696h156.364c-10.011,10.38-18.804,19.542-24.966,26.052 c-18.724,19.781-18.285,50.858,0.974,70.118c19.64,19.64,51.48,19.64,71.12,0l70.947-70.947 c6.293-6.294,16.651-7.565,23.434-1.802c7.561,6.426,7.84,17.745,1.028,24.557l-60.554,60.554 c-23.155,23.155-54.559,36.274-87.305,36.274H61.861c-29.256,0-52.676,24.978-49.855,54.855 c2.459,26.055,25.819,45.207,51.99,45.207h178.041c15.229,0.072,29.956-1.631,43.92-5.028 c27.935-6.795,52.807-20.368,72.494-40.054l120.351-112.984v7.805c0,9.217,7.812,16.696,17.03,16.696s16.139-7.479,16.139-16.696 V127.997C511.969,118.773,505.047,111.302,495.83,111.302z M200.385,233.848h-50.198v-50.198c0-9.217-7.362-16.696-16.584-16.696 c-9.223,0-16.696,7.479-16.696,16.696v50.198H66.708V133.562h133.677V233.848z"></path> 
       </g> </g> </g></svg>
    </div>
    <span>Lotes con Financiamiento</span>
</div>
    <div class="beneficio-item oculto" id="animacion-item">
        <div class="beneficio-circulo" >
         <svg fill="#F7F6EC" class="beneficio-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512.001 512.001">
         <g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
         <g id="SVGRepo_iconCarrier"> <g> <g> 
         <path d="M406.99,138.361l-66.729-66.729c-6.517-6.517-17.076-6.517-23.594,0l-66.729,66.729c-2.737,2.732-4.9,7.162-4.9,11.808 v100.11c0,9.217,7.474,16.685,16.685,16.685h133.48c9.211,0,16.685-7.468,16.685-16.685v-100.11 C411.889,145.511,409.688,141.053,406.99,138.361z M378.52,233.594h-33.37v-16.685c0-9.217-7.474-16.685-16.685-16.685 s-16.685,7.468-16.685,16.685v16.685h-33.37v-66.74h100.11V233.594z"></path> 
         </g> </g> <g> <g> 
         <path d="M328.465,0.004c-101.197,0-183.535,82.334-183.535,183.535c0,44.602,16.024,85.513,42.578,117.353l-23.154,23.154 l-11.797-11.796c-6.517-6.517-17.076-6.517-23.594,0l-44.458,44.452c0,0-0.002,0.001-0.003,0.002l-0.002,0.003l-69.877,69.87 c-19.498,19.515-19.498,51.266,0.011,70.781v0.006c19.516,19.516,51.282,19.504,70.792-0.006l114.329-114.323 c6.514-6.514,6.514-17.08,0-23.594l-11.805-11.804l23.153-23.153c31.842,26.56,72.757,42.588,117.363,42.588 c101.197,0,183.535-82.334,183.535-183.535S429.661,0.004,328.465,0.004z M143.497,392.104l-23.603-23.599l20.864-20.863 c12.057,12.053,23.574,23.568,23.605,23.599L143.497,392.104z M328.465,333.704c-82.805,0-150.165-67.365-150.165-150.165 s67.36-150.165,150.165-150.165s150.165,67.365,150.165,150.165S411.271,333.704,328.465,333.704z"></path> 
         </g> </g> </g></svg>
        </div>
        <span>Precios bajos y accesibles</span>
    </div>

            <div class="beneficio-item oculto" id="animacion-item">
                <div class="beneficio-circulo">
                    <svg fill="#F7F6EC" class="beneficio-svg"  viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                    <g id="SVGRepo_iconCarrier">
                    <path d="M49.798 23.592c-7.834.001-15.596 3.368-14.78 10.096l2 14.624c.351 2.573 2.09 6.688 4.687 6.688h.185l2.127 24.531c.092 1.104.892 2 2 2h8c1.108 0 1.908-.896 2-2L58.144 55h.186c2.597 0 4.335-4.115 4.687-6.688l2-14.624c.524-6.734-7.384-10.098-15.219-10.096z"></path>
                    <path d="M50.024 50.908l-.048.126c.016-.038.027-.077.043-.115l.005-.011z"></path>
                    <circle cx="50" cy="10.5" r="10.5"></circle>
                    <path d="M60.922 69.092c-.085.972-.175 1.942-.26 2.914C69.614 73.27 76.25 76.138 77 79.686c1.117 5.276-16.142 7.65-27.26 7.539c-11.118-.112-28.059-2.263-26.578-7.54c.972-3.463 7.512-6.274 16.23-7.583c-.087-.975-.186-1.95-.27-2.924c-11.206 1.236-20.542 4.279-24.272 8.246H2.229L0 82.047h13.166c1.023 5.44 12.427 10.136 28.734 11.322L41.342 100h16.14l-.162-6.63c16.39-1.187 28.117-5.883 29.514-11.323H100l-1.91-4.623H85.469c-3.543-4.067-13.048-7.16-24.547-8.332z">   
                    </path></g></svg>
                </div>
                <span>Ubicaciones estrategicas</span>
            </div>

            <div class="beneficio-item oculto" id="animacion-item">
                <div class="beneficio-circulo">
                    <svg fill="#F7F6EC" class="beneficio-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> 
                    <path d="M456.348,0H55.652C24.968,0,0,24.968,0,55.652v400.696C0,487.032,24.968,512,55.652,512c9.88,0,388.553,0,400.696,0 C487.032,512,512,487.032,512,456.348V55.652C512,24.968,487.032,0,456.348,0z M79.019,242.641l133.565-100.174 c5.043-3.793,11.837-4.397,17.489-1.576l57.554,28.782l125.304-93.989c7.392-5.522,17.848-4.044,23.381,3.342 c5.533,7.375,4.033,17.842-3.337,23.375L299.411,202.576c-5.065,3.782-11.848,4.402-17.489,1.576l-57.554-28.782L99.063,269.359 c-7.405,5.534-17.85,4.025-23.381-3.337C70.151,258.641,71.65,248.174,79.019,242.641z M105.739,478.609H72.348V356.174 c0-9.217,7.479-16.696,16.696-16.696c9.217,0,16.696,7.479,16.696,16.696V478.609z M172.522,478.609H139.13V306.087 c0-9.217,7.479-16.696,16.696-16.696c9.217,0,16.696,7.479,16.696,16.696V478.609z M239.304,478.609h-33.391V256 c0-9.217,7.479-16.696,16.696-16.696s16.696,7.479,16.696,16.696V478.609z M306.087,478.609h-33.391V289.391 c0-9.217,7.479-16.696,16.696-16.696s16.696,7.479,16.696,16.696V478.609z M372.87,478.609h-33.391V239.304 c0-9.217,7.479-16.696,16.696-16.696c9.217,0,16.696,7.479,16.696,16.696V478.609z M439.652,478.609h-33.391V189.217 c0-9.217,7.479-16.696,16.696-16.696c9.217,0,16.696,7.479,16.696,16.696V478.609z"></path> 
                    </g> </g> </g></svg>
                </div>
                <span>Rentanbilidad a largo plazo</span>
            </div>

            <div class="beneficio-item oculto" id="animacion-item">
                <div class="beneficio-circulo">
                    <svg class="beneficio-svg" fill="#F7F6EC"  version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 512 512" stroke="#000000">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                    <g id="SVGRepo_iconCarrier"> <g> <g> 
                    <path d="M463.423,139.13l-75.457,0.13c-19.772,0.022-39.066,3.88-56.934,11.304l-97.293,37.433v185.096l120.131-89.42 c7.081-5.663,15.633-9.179,24.565-10.402v26.555c0,21.869,17.783,39.652,39.652,39.652h20.87 c21.869,0,39.652-17.783,39.652-39.652v-29.034C497.806,265.371,512,247.886,512,226.977v-39.358 C512,161.173,490.794,139.222,463.423,139.13z M445.217,299.826c0,3.456-2.805,6.261-6.261,6.261h-20.87 c-3.456,0-6.261-2.805-6.261-6.261v-27.13h33.391V299.826z"></path> </g> </g> <g> <g> 
                    <path d="M440.945,345.021c-6.327-7.066-18.522-7.066-24.848,0c-9.076,10.12-54.359,62.218-54.359,94.631 c0,36.826,29.956,66.783,66.783,66.783s66.783-29.956,66.783-66.783C495.304,407.239,450.021,355.141,440.945,345.021z"></path> </g> </g> <g> <g> <path d="M317.217,5.565c-1.378,0-242.728,26.059-244.098,26.207C31.435,36.989,0,72.598,0,114.609c0,220.164,0,157.148,0,375.13 c0,9.217,7.479,16.696,16.696,16.696h166.956c9.217,0,16.696-7.479,16.696-16.696V152.716l131.326-49.096 C386.337,87.136,374.724,5.565,317.217,5.565z M100.174,422.957c0,9.217-7.479,16.696-16.696,16.696s-16.696-7.479-16.696-16.696 V205.913c0-9.217,7.479-16.696,16.696-16.696s16.696,7.479,16.696,16.696V422.957z M321.011,71.989l-135.525,50.63 c-2.579-0.287-149.498-0.185-152.094-0.185v-7.826c0-25.206,18.858-46.576,43.598-49.674l240.967-25.956 C336.232,39.762,340.713,65.982,321.011,71.989z"></path> 
                    </g> </g> </g></svg>   
                </div>
                <span>Servicios Básicos</span>
            </div>

        </div>

    </div><!-- icons-beneficios --></div>
        </div>

        <div class="col-imagenes-proyectos">
              <div class="botones-proyectos tarjeta-wrapper" data-anim="elemento" data-anim-orden="2">
        <div class="tarjeta-wrapper" data-anim="elemento" data-anim-orden="2">
        <figure class="proyecto-card">
            <img src="/Trilux_Inmobiliaria/IMG/villa-110.jpg" alt="Proyecto 1"/>
            <div class="overlay-proyecto">
                <h3>Villa 110</h3>
                <p>Descubre Villa 110 Huacho, un proyecto pensado para quienes buscan invertir, construir y crecer con tranquilidad.</p>
                <a href="${pageContext.request.contextPath}/Villa110.jsp" class="btn-proyecto">Ver proyecto</a>
            </div>
        </figure>
        </div>
            
            <div>
        <figure class="proyecto-card">
            <img src="/Trilux_Inmobiliaria/IMG/Río_Lunahuaná.jpg" alt="Proyecto 2"/>
            <div class="overlay-proyecto">
                <h3>Costa Imperial</h3>
                <p>Cañete - Próximamente...</p>
                <a href="${pageContext.request.contextPath}/Costa_Imperial.jsp" class="btn-proyecto">Ver proyecto</a>
            </div>
        </figure>
            </div>
    </div>
</div><!-- proyectos -->     
        </div>
    </div>
</div><!-- proyectos -->
            

<div id="carrusel" class="padding">
    <h1>VISITAS  trilux</h1>
    <div class="carrusel-auto-wrapper">
    <div class="carrusel-auto-track">
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/villa-110.jpg" alt="Villa 110">
            <span>Villa 110</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/proximamente.jpg" alt="Costa Imperial">
            <span>Costa Imperial</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/Foto-grupal.jpg" alt="Equipo Trilux">
            <span>Nuestro equipo</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/Foto-4.jpg" alt="Visitas">
            <span>Visitas</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/foto-mega-puerto.jpg" alt="Mega Puerto">
            <span>Mega Puerto de Chancay</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/foto-universidad-de-lima.jpg" alt="Visitas">
            <span>Ubicaciones estratégicas</span>
        </div>

        <!-- 🔁 Se repiten las mismas imágenes para que el loop se vea continuo -->
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/villa-110.jpg" alt="Villa 110">
            <span>Villa 110</span>
        </div>
        <div class="carrusel-auto-item">
             <img src="/Trilux_Inmobiliaria/IMG/proximamente.jpg" alt="Costa Imperial">
            <span>Costa Imperial</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/Foto-grupal.jpg" alt="Equipo Trilux">
            <span>Nuestro equipo</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/Foto-4.jpg" alt="Visitas">
            <span>Visitas</span>
        </div>
        <div class="carrusel-auto-item">
            <img src="/Trilux_Inmobiliaria/IMG/foto-mega-puerto.jpg" alt="Mega Puerto">
            <span>Mega Puerto de Chancay</span>
        </div>
    </div>
</div>
</div><!-- CARRUSEL -->

<div id="formulario-unión">
    <div class="row-cta">

        <!-- ===== CAJA VERDE CON TEXTO ===== -->
        <div class="col-texto">

            <!-- Título grande -->
            <h1 class="titulo-cta">
                <span class="palabra-1">¡Lotes</span>
                <span class="palabra-2">con</span><br>
                <span class="palabra-3">ubicación</span>
                <span class="palabra-4">estratégica!</span>
            </h1>

            <!-- Subtítulo -->
            <p class="subtitulo-cta">
                Invierte hoy en el lugar ideal, con acceso, plusvalía y todo lo que necesitas para construir el futuro que sueñas.
            </p>

            <!-- Botón "Aquí →" -->
            <div class="aqui-flecha" onclick="mostrarFormulario()">
                <span>Aquí</span>
                <svg width="70" height="24" viewBox="0 0 70 24" xmlns="http://www.w3.org/2000/svg">
                    <line x1="0" y1="12" x2="55" y2="12" stroke="#01331c" stroke-width="3"/>
                    <polygon points="55,3 70,12 55,21" fill="#01331c"/>
                </svg>
            </div>
        </div>

        <!-- ===== FORMULARIO DESPLEGABLE ===== -->
        <div class="col-form-cta" id="col-form-cta">
            <div class="form-card">
                <h2 class="form-titulo">CONTÁCTANOS</h2>
                <form>
                    <div class="form-group" style="color:white;">
                        <label style="color:white;">Nombres</label>
                        <input type="text" placeholder="Introduce tu nombre" required>
                    </div>
                    <div class="form-group">
                        <label style="color:white;">Número de contacto</label>
                        <input type="tel" placeholder="Introduce tu número" required>
                    </div>
                    <button type="submit" class="btn-contacto">¡Agenda tu visita!</button>
                </form>
            </div>
        </div>

    </div><!-- row-cta -->
</div><!-- formulario -->




<div id="unete-contenedor" class="padding">
    <img src="/Trilux_Inmobiliaria/IMG/UNETE-TRILUX.jpg" alt="formulario-union" class="img-fluid unete-img" style="border-radius: 30px;"/>
         <a href="${pageContext.request.contextPath}/ASESORES.jsp" class="btn-mas-info">¡Más información aquí!</a>    
</div><!-- unete -->


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