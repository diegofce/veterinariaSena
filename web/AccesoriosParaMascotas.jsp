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
        <title>Accesorios Para Mascotas</title>
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
                    <li><a href="Servicios.jsp">Servicios</a></li>
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
              </ul>
            </nav>
        </header>
        
        <div class="bienvenida">

            <div class="menu">
              <label class="label" for="">Filtros</label>
              <details>
                <summary class="opciones-menu">Categorías</summary>
                <nav class="menus">
                  <ul class="ul-menu1" id="categorias">
                    <li><input type="checkbox" id="Pelotas"><label class="label-check1" for="Pelotas">Pelotas</label></li>
                    <li><input type="checkbox" id="Con Cuerdas"><label class="label-check1" for="Con Cuerdas">Con Cuerdas</label></li>
                    <li><input type="checkbox" id="huesos"><label class="label-check1" for="huesos">Huesos</label></li>
                    <li><input type="checkbox" id="huesos"><label class="label-check1" for="huesos">Huesos</label></li>
                    <li><input type="checkbox" id="mordedores"><label class="label-check1" for="mordedores">Mordedores</label></li>
                    <li><input type="checkbox" id="Peluches"><label class="label-check1" for="Peluches">Peluches</label></li>
                  </ul>
                </nav>
              </details>
              <details>
                <summary class="opciones-menu">Marca</summary>
                <nav class="menus">
                  <ul class="ul-menu1" id="categorias">
                    <li><input type="checkbox" id="hills"><label class="label-check1"  for="hills">Hills</label></li>
                      <li><input type="checkbox" id="animals factors"><label class="label-check1"  for="animals factors">Animals Factors</label></li>
                      <li><input type="checkbox" id="bamboo pet"><label class="label-check1"  for="bamboo pet">Bamboo Pet</label></li>
                      <li><input type="checkbox" id="bios pet"><label class="label-check1"  for="bios pet">Bios Pet</label></li>
                  </ul>
                </nav>
              </details>
            </div>

            <div>
                <div>
                    <h1 class="titulo">Accesorios Para Mascotas</h1>
                </div>
                <form action="" class="formulario">
                    <label for="tipo-mascota" class="label">Selecciona el tipo de mascota: </label>
                    <br>
                    <select class="input" name="tipo-mascota" id="tipo-mascota">
                      <option value=""></option>
                      <option value="Perros">Perros</option>
                    </select>
                    <br />
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
                              <img src="${pageContext.request.contextPath}/img/Hueso_con_sonido_pequeño_para_perros sin fondo.png" alt="">
                              <p class="descripcion-articulos">Hueso con sonido pequeño para perros</p>
                              <span class="precio">$ 9.992</span>
                            </div>
                          </div>
                          <div class="item">
                            <div class="contenedor-foto">
                              <img src="${pageContext.request.contextPath}/img/Juguete_erizo_vinilo_pequeño_para_perro sin fondo.png" alt="">
                              <p class="descripcion-articulos">Juguete erizo vinilo pequeño para perro</p>
                              <span class="precio">$ 9.992</span>
                            </div>
                          </div>
                          <div class="item">
                            <div class="contenedor-foto">
                              <img src="${pageContext.request.contextPath}/img/Juguete_Muslo_de_Pollo._Vinilo sin fondo.png" alt="">
                              <p class="descripcion-articulos">Juguete Muslo de Pollo. Vinilo</p>
                              <span class="precio">$ 9.992</span>
                            </div>
                          </div>
                          <div class="item">
                            <div class="contenedor-foto">
                              <img src="${pageContext.request.contextPath}/img/Juguete_Perro_Erizo_Sentado sin fondo.png" alt="">
                              <p class="descripcion-articulos">Juguete Perro Erizo Sentado</p>
                              <span class="precio">$ 9.992</span>
                            </div>
                          </div>
                        </div>
                        <div class="fila">
                          <div class="item">
                            <div class="contenedor-foto">
                              <img src="${pageContext.request.contextPath}/img/Pelota_puntos_gigantes sin fondo.png" alt="">
                              <p class="descripcion-articulos">Pelota puntos gigantes</p>
                              <span class="precio">$ 16.851</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </fieldset>
                    <dialog class="manejo-errores" title="Advertencia">
                        <p class="texto-interno">
                          El Accesorio Solicitado No Está Disponible
                        </p>
                        <button class="salir-ventana-emergente" onclick="window.location.href='${pageContext.request.contextPath}/AccesoriosParaMascotas.jsp'">Salir</button>
                    </dialog>
                   
                </form>
                    
                <div>
                    <button class="botones-sistema">Generar Servicio</button>
                    <button class="botones-sistema">Gestionar Pago</button>
                    <br>
                    <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Salir</button>
                </div>
                
            </div>
           
               
        </div>
    </body>
</html>
