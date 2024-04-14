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
        <link
            rel="shortcut icon"
            href="${pageContext.request.contextPath}/img/logo veterinaria con nombre.png"
            type="image/x-icon"
        />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/mis_estilos.css" />
        <title>Registro Usuarios</title>
    </head>
    <body>
        <div class="bienvenida">
    
            <div class="columna">
                <div>
                
                    <h1 class="titulo">Registro de Usuario</h1>

                </div>
                
                <form action="ConectorEnvio" method="POST" class="formulario">
                    
                    <label class="label" for="primer_nombre">Primer Nombre:</label>
                    <br>
                    <input class="input" type="text" name="primer_nombre" placeholder="Ingresa tú Primer Nombre "/>
                    <br>
                    <label class="label" for="segundo_nombre">Segundo Nombre:</label>
                    <br>
                    <input class="input" type="text" name="segundo_nombre" placeholder="Ingresa tú Segundo Nombre "/>
                    <br>
                    <label class="label" for="primer_apellido">Primer Apellido:</label>
                    <br>
                    <input class="input" type="text" name="primer_apellido" placeholder="Ingresa tú Primer Apellido"/>
                    <br>
                    <label class="label" for="segundo_apellido">Segundo Apellidos:</label>
                    <br>
                    <input class="input" type="text" name="segundo_apellido" placeholder="Ingresa tú Segundo Apellido"/>
                    <br>
                    <label class="label" for="identificacion">Identificación:</label>
                    <br>
                    <input class="input" type="number" name="identificacion" placeholder="Ingresa tú número de Identificación"/>
                    <br>
                    <label class="label" for="tipo_documento">Tipo de documento:</label>
                    <br>
                    <input class="input" type="text" name="tipo_documento" placeholder="Ingresa el tipo de documento"/>
                    <br>
                    <label class="label" for="fech-nacimiento">Fecha de Nacimiento:</label
                    ><br>
                    <input class="input" type="date" name="fechnacimiento" placeholder="Ingresa tú fecha de Nacimiento"/>
                    <br>
                    <label class="label" for="email">Correo Electrónico:</label>
                    <br>
                    <input class="input" type="email" name="email" placeholder="Ingresa tú correo electronico"/>
                    <br>
                    <label class="label" for="telefono">Número Telefónico:</label>
                    <br>
                    <input class="input" type="number" name="telefono" placeholder="Ingresa tú Número de Telefono"/>
                    <br>
                    <label class="label" for="direccion">Dirección Residencia:</label><br />
                    <input class="input" type="text" name="direccion" placeholder="Ingresa tú dirección"/>
                    <br>
                    <label class="label" for="ciudad">Ciudad Residencia:</label>
                    <br>
                    <input class="input" type="text" id="ciudad" placeholder="Ingresa la Ciudad de Residencia"/>
                    <br>
                    <label class="label" for="departamento">Departamento de Residencia:</label>
                    <br>
                    <input class="input" type="text" name="departamento" placeholder="Ingresa el Departamento de Residencia"/>
                    <br>
                    <label class="label" for="contrasena">Contraseña:</label>
                    <br>
                    <input class="input" type="password" name="contrasena" placeholder="ingresa tu contrasena"/>
                    <br><br>
                    
                    <input type="submit" value="Registrarse" class="botones-sistema">
 
                </form> 
                
                <div >
                
                    
                    <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/Registro Mascotas.jsp'">Registrar Mascota</button>
                    <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Salir</button>

                </div>
            </div>   
        </div>
    </body>
</html>
