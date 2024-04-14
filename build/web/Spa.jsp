<%-- 
    Document   : Registro Usuarios
    Created on : 7/04/2024, 3:56:41 p. m.
    Author     : pacho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo veterinaria con nombre.png" type="image/x-icon"/>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/mis_estilos.css" />
        <title>Spa</title>
    </head>
    <body>
        <header class="encabezado">
            <nav class="menus">
                <ul class="ul-menu">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li>
                        <a href="#">Registro</a>
                        <ul class="menu-oculto">
                          <li><a href="Registro Usuarios.jsp">Registro Usuario</a></li>
                          <li><a href="Registro Mascotas.jsp">Registro Mascota</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Servicios</a>
                        <ul class="menu-oculto">
                          <li><a href="Servicios.jsp">Servicios</a></li>
                          <li><a href="#">Urgencias</a></li>
                          <li><a href="#">Agendar Cita Veterinaria</a></li>
                          <li><a href="AccesoriosParaMascotas.jsp">Accesorios Para Mascotas</a></li>
                          <li><a href="AlimentosParaMascotas.jsp">Alimentos Para Mascotas</a></li>
                          <li><a href="#">Medicamentos</a></li>
                        </ul>
                    </li>

                    <li><a href="#">Contáctenos</a></li>
                    <li>
                        <a href="#">Quienes Somos</a>
                        <ul class="menu-oculto">
                          <li><a href="#">Misión</a></li>
                          <li><a href="#">Visión</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="">
                          <img
                            src="${pageContext.request.contextPath}/img/tienda-online32.png"
                            alt="carrito de compras"
                          /><span></span>
                        </a>
                    </li>
                </ul>
            </nav>
        </header>
        
        <div class="bienvenida">
            
            
            <div class="columna">
                
                <div>
                    <h1 class="titulo">Agendar cita para Servicio de Spa</h1>
                </div>
                
                <form action="" class="formulario">
                    <label for="identificacion" class="label">Identificación del Solicitante: </label>
                    <br>
                    <input type="number" class="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                    <br>
                    <label for="nombre" class="label">Solicitante del Servicio: </label>
                    <br>
                    <input type="text" class="input" id="nombre" placeholder="Ingresa tú Nombre"/>
                    
                    <div class="bienvenida-1-1, columna_1">
                        
                        <div>
                          <label for="fecha-servicio" class="label">Fecha del Servicio: </label>
                          <br>
                          <input class="input-1" type="date" name="fecha-servicio" id="fecha-servicio"/>
                        </div>
                       
                        <div>
                          <label for="hora-servicio" class="label">Hora del Servicio:</label>
                          <br>
                          <input class="input-1" type="time" name="hora-servicio" id="hora-servicio"/>
                        </div>
                        <br>
                    </div>
                    <div>
                        <label for="nombre-mascota" class="label">Nombre de la Mascota: </label>
                        <br>
                        <input type="text" class="input" id="nombre-mascota" placeholder="Ingresa el Nombre de la Mascota"/>
                    </div>
                    
                    <div>
                        <label for="valor-servicio" class="label">Valor del Servicio: </label>
                        <br>
                        <input type="number" class="input" id="valor-servicio" placeholder="valor del servicio"/>
                    </div> 
                    
                </form> 
                
                <div >
                
                    <button class="botones-sistema">Generar Servicio</button>
                    <button class="botones-sistema">Gestionar Pago</button>
                    <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Salir</button>

                </div>
                
            </div>
            
            <div>
                
                <dialog class="manejo-errores" title="Advertencia">
                    <p class="texto-interno">
                      El Servicio Solicitado No Está Disponible en esa Fecha
                    </p>
                    <button class="salir-ventana-emergente" onclick="window.location.href='${pageContext.request.contextPath}/Spa.jsp'">Salir</button>
                </dialog>
                
            </div>
            
            
        </div>
    </body>
</html>
