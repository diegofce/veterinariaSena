

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="shortcut icon"
            href="${pageContext.request.contextPath}/img/logo veterinaria con nombre.png"
            type="image/x-icon"
        />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/mis_estilos.css" />
        
        <title>Veterinaria Dr Care</title>
    </head>
    <body>
        
        <div class="bienvenida">
  
            <div class="columna">
                
                <div>
                
                    <h1 class="titulo">Bienvenido</h1>

                </div>
                
                <div>
                
                    <form action="IngresoEnvio" method="POST" class="formulario">

                        <label for="email" class="label">Usuario</label>
                        <br>
                        <input type="email" name="email" class="input" placeholder="Ingresa tú email">
                        <br>
                        <label for="contrasena" class="label">Contraseña</label>
                        <br>
                        <input type="password" name="contrasena" class="input" placeholder="Contraseña">
                        
                        <div class="botones">
                    
                            <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/Servicios.jsp'">Ingresar</button>
                            <button class="botones-sistema">Cerrar</button>

                        </div>

                    </form>
                </div>
                
                <div>
                    
                    <p class="label-1">ó ingresa con</p>
                    <br><br>

                    <ul class="ul-botones">
                      <li>
                        <img src="${pageContext.request.contextPath}/img/googlemas.png" alt="icono de google mas" />
                      </li>

                      <li>
                        <img src="${pageContext.request.contextPath}/img/facebook.png" alt="icono de facebook" />
                      </li>
                    </ul>
                    
                </div>
                
                <br><br>

                <br><br>
                <div class="botones">
                    
                   <a href="Registro Usuarios.jsp" class="links" target="_self" id="registro-user">Registrarse</a>

                   <a href="olvido-contrasena.jsp" class="links" target="_self">Olvido Contraseña</a> 
                    
                </div> 
            </div>
                    
            <div>
                <dialog class="manejo-errores" title="Advertencia">
                    <p class="texto-interno">La Contraseña o el Usuario no coinciden</p>
                    <button class="salir-ventana-emergente">Salir</button>
                </dialog>
            </div>
        </div>
        <!-- <% out.println("Context Path: " + request.getContextPath()); %> -->
    </body>
    
</html>
