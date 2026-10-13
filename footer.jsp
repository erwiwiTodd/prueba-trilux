<jsp:include page="index.jsp"/>
<style>
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
</style>

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
        <span style="margin-top:30px;">UNETE</span>
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

<div id="derechos" style="background-color: #02542D; color: white; padding: 15px;">
    <div class="display">
        <span>Copyright © 2026 TRILUX INMOBILIARIA</span>
        <span>|</span>
        <span>TODOS LOS DERECHOS RESERVADOS</span>
    </div>
</div>

<a href="#" id="ir-arriba">
    <img src="/Trilux_Inmobiliaria/IMG/TRILUX-INICIO.png" alt="Subir-arriba">
</a>

</div><!-- div final no tocar -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">    
</script>
</body>
</html>

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
function mostrarFormulario() {
    document.getElementById('col-form-cta').classList.add('mostrar');
}
</script>

<script>
document.addEventListener("DOMContentLoaded", function(){
    const textoAnimacion = document.querySelector('.texto-animacion');
    setTimeout(() => { 
        textoAnimacion.classList.add('visible');  
    }, 300);
});
</script>


<script>
document.addEventListener("DOMContentLoaded", function() {
    
    // 1. Seleccionamos el contenedor de la sección y TODOS los items
    const seccionClientes = document.getElementById('clientes');
    const items = document.querySelectorAll('.beneficio-item');

    // 2. Configuramos el observador
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            // Si la sección #clientes es visible en pantalla
            if (entry.isIntersecting) {
                
                // 3. Recorremos cada item y le quitamos la clase "oculto" con retraso
                items.forEach((item, index) => {
                    setTimeout(() => {
                        item.classList.remove('oculto');
                    }, index * 300); // 300ms de retraso entre cada uno (ajústalo a tu gusto)
                });

                // 4. Dejamos de observar la sección para que no se repita la animación
                observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.3 // Se activa cuando el 30% de la sección es visible
    });

    // 5. Empezamos a observar la sección
    if (seccionClientes) {
        observer.observe(seccionClientes);
    }
});
</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {

    // ====== ANIMACIÓN SECCIÓN QUIENES SOMOS ======
    const seccionSomos = document.getElementById('quienes-somos');
    const bloqueImagen = document.querySelector('.col-imagen-somos');
    const bloqueTexto = document.querySelector('.col-texto-somos');

    const observerSomos = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                
                // 1. Primero sube la imagen
                bloqueImagen.classList.add('visible');

                // 2. Después de 700ms, aparece el texto
                setTimeout(() => {
                    bloqueTexto.classList.add('visible');
                }, 700);

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

<script>
// ====== ANIMACIÓN SECCIÓN PROYECTOS ======
const seccionProyectos = document.getElementById('proyectos');
const tituloProyectos = document.querySelector('.titulo-proyectos');
const tarjetasProyectos = document.querySelectorAll('.tarjeta-wrapper'); // ?? CAMBIO AQUÍ

const observerProyectos = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            
            // 1. Primero entra el título con la línea
            tituloProyectos.classList.add('visible');

            // 2. Después entran las tarjetas una por una
            tarjetasProyectos.forEach((tarjeta, index) => {
                setTimeout(() => {
                    tarjeta.classList.add('visible');
                }, 600 + (index * 500)); // ?? CAMBIO: 400 ? 1200 (espera a que termine la anterior)
            });

            observerProyectos.unobserve(entry.target);
        }
    });
}, {
    threshold: 0.2
});

if (seccionProyectos) {
    observerProyectos.observe(seccionProyectos);
}
</script>

