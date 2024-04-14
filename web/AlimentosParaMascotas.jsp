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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/mis_estilos.css"/>
        <title>Alimentos Para Mascotas</title>
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
                          <li><a href="Spa.jsp">Spa</a></li>
                          <li><a href="#">Urgencias</a></li>
                          <li><a href="#">Agendar Cita Veterinaria</a></li>
                          <li><a href="AccesoriosParaMascotas.jsp">Accesorios Para Mascotas</a></li>
                          <li><a href="Servicios.jsp">Servicios</a></li>
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
                        <a href="#">
                          <img src="${pageContext.request.contextPath}/img/tienda-online32.png" alt="carrito de compras"/>
                        </a><span></span>
                    </li>
                </ul>
            </nav>
        </header>
        
        <div class="bienvenida">
            
            
            <div class="menu">
                <label class="label" for="">Filtros</label>
                <details>
                    <summary class="opciones-menu">Categorías</summary>
                    <nav class="menus">
                        <ul class="ul-menu1">
                            <li><input type="checkbox" id="concentrados"><label class="label-check1" for="concentrados">Concentrados</label></li>
                            <li><input type="checkbox" id="trozos_humedos"><label class="label-check1" for="trozos_humedos">Trozos Húmedos</label></li>
                            <li><input type="checkbox" id="snacks"><label class="label-check1" for="snacks">Snacks</label></li>
                            <li><input type="checkbox" id="huesos"><label class="label-check1" for="huesos">Huesos</label></li>
                            <li><input type="checkbox" id="galletas"><label class="label-check1" for="galletas">Galletas</label></li>
                            <li><input type="checkbox" id="otros_alimentos"><label class="label-check1" for="otros_alimentos">Otros alimentos</label></li>
                        </ul>
                    </nav>
                </details>
                <details>
                    <summary class="opciones-menu">Marca</summary>
                    <nav class="menus">
                        <ul class="ul-menu1">
                            <li><input type="checkbox" id="comida_max"><label class="label-check1" for="comida_max">Comida Max</label></li>
                            <li><input type="checkbox" id="comida_liver-care"><label class="label-check1" for="comida_liver-care">Comida Liver Care</label></li>
                            <li><input type="checkbox" id="comida_hills"><label class="label-check1" for="comida_hills">Comida Hills</label></li>
                            <li><input type="checkbox" id="comida_chunky"><label class="label-check1" for="comida_chunky">Comida Chunky</label></li>
                        </ul>
                    </nav>
                </details>
            </div>

            <div class="bienvenida">
 
                <div>

                    <div>
                        <h1 class="titulo">Alimentos Para Mascotas</h1>
                    </div>

                    <form action="" class="formulario">
                        <label for="tipo-mascota" class="label">Selecciona el tipo de mascota: </label>
                        <br>
                        <select class="input" name="tipo-mascota" id="tipo-mascota">
                          <option value=""></option>
                          <option value="Perros">Perros</option>
                        </select>
                        <br>
                        <label for="identificacion" class="label">Identificación del Solicitante: </label>
                        <br>
                        <input type="number" class="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                        <br>
                        <label for="nombre" class="label">Solicitante del Servicio: </label>
                        <br>
                        <input type="text" class="input" id="nombre" placeholder="Se Muestra tú Nombre"/>
                        <br><br>
                        <label for="porductos" class="label">Listado de Alimentos Según Mascota: </label>
                        <br>
                        <fieldset class="productos" id="productos">
                            <div class="mostrador" id="mostrador">
                                <div class="fila">
                                    <div class="item">
                                        <div class="contenedor-foto">
                                          <img src="${pageContext.request.contextPath}/img/comida_max sin fondo.png" alt="">
                                          <p class="descripcion-articulos">Max Performance Perros adultos Pollo y Arroz 20 Kg + 2 Kg</p>
                                          <span class="precio">$ 283.794</span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="contenedor-foto">
                                          <img src="${pageContext.request.contextPath}/img/comida_chunky sin fondo.png" alt="">
                                          <p class="descripcion-articulos">Chunky Perros Adultos Pollo 25 Kg</p>
                                          <span class="precio">$ 167.147</span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="contenedor-foto">
                                          <img src="${pageContext.request.contextPath}/img/comida_liver-care sin fondo.png" alt="">
                                          <p class="descripcion-articulos">Hills Prescription Diet Perros Liver Care l/d 17.6 Lb</p>
                                          <span class="precio">$ 312.073</span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="contenedor-foto">
                                          <img src="${pageContext.request.contextPath}/img/comida_hills sin fondo.png" alt="">
                                          <p class="descripcion-articulos">Hills Canine adult small bite 15 Lb</p>
                                          <span class="precio">$ 283.794</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fila">
                                <div class="item">
                                    <div class="contenedor-foto">
                                        <img src="${pageContext.request.contextPath}/img/comida_weight_loss sin fondo.png" alt="">
                                        <p class="descripcion-articulos">Hills Prescription Diet Perros Weight Reduction r/d 27.5 Lb</p>
                                        <span class="precio">$ 438.325</span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <dialog class="manejo-errores" title="Advertencia">
                            <p class="texto-interno">
                              El Accesorio Solicitado No Está Disponible
                            </p>
                            <!-- <button class="salir-ventana-emergente" onclick="window.location.href='${pageContext.request.contextPath}/AlimentosParaMascotas.jsp'">salir</button>-->
                        </dialog>
                        <br><br>
                    </form>

                    <div class="botones">
                        <button class="botones-sistema">Generar Servicio</button>
                        <button class="botones-sistema">Gestionar Pago</button>
                        <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Salir</button>
                    </div>
                    <br><br>
                </div>
            </div>
        </div>
    </body>
</html>
