
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo veterinaria con nombre.png" type="image/x-icon"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/mis_estilos.css" />
        
        <title>Registro Mascotas</title>
        
    </head>
    
    <body>
        
        <div class="bienvenida">

            <div class="columna">

                <div>
                    <h1 class="titulo">Registro de Mascotas</h1>
                </div>

                <form action="" class="formulario">
                    <label class="label" for="nombre mascota">Nombre Mascota:</label><br />
                    <input class="input" type="text" id="nombre mascota" placeholder="Ingresa el Nombre de la Mascota"/>
                    <br />
                    <label class="label" for="raza">Raza:</label><br />
                    <input class="input" type="text" id="raza" placeholder="Ingresa la raza de la Mascota"/>
                    <br />
                    <label class="label" for="especie">Especie:</label><br />
                    
                    <select class="input" name="Especie" id="especie">
                      <option class="input" value=""></option>
                      <option class="input" value="Perro">Perro</option>
                      <option class="input" value="Gato">Gato</option>
                      <option class="input" value="Conejo">Conejo</option>
                      <option class="input" value="Cerdo">Cerdo</option>
                    </select>
                    
                    <br>

                    <div class="bienvenida-1">
                      <label class="label" for="edad">Edad Mascota:</label>
                      <label class="label-2" for="peso">Peso Mascota:</label>
                      <div>
                        <input class="input-1" type="number" id="edad" placeholder="Ingresa la Edad "/>
                        <span class="label" for="peso">Años</span>
                      </div>
                      <div>
                        <input class="input-1" type="number" id="peso" placeholder="Ingresa el Peso" />
                        <span class="label" for="peso">Kg</span>
                      </div>
                    </div>
                    
                    <div class="bienvenida-1">

                        <label class="label" for="vacunas">Vacunas:</label>
                        <label class="label-2" for="cant-vacunas">Cantidad Vacunas:</label>
                        <input class="checkbox" type="checkbox" name="checkbox" id="checkbox1"/>
                        <label class="label-check" for="checkbox1">Rabia</label>
                        <div>
                            <select class="input-2" name="Cantidad Vacunas" id="checkbox1">
                              <option class="input-2" value=""></option>
                              <option class="input-2" value="1">1</option>
                              <option class="input-2" value="2">2</option>
                            </select>
                        </div>
                        <input class="checkbox" type="checkbox" name="checkbox" id="checkbox2"/>
                        <label class="label-check" for="checkbox2">Parvovirosis</label>
                        <div>
                          <select class="input-2" name="Cantidad Vacunas" id="checkbox2">
                            <option class="input-2" value=""></option>
                            <option class="input-2" value="1">1</option>
                            <option class="input-2" value="2">2</option>
                          </select>
                        </div>
                    </div>

                    <label class="label" for="ident-propietario">Identificacón Propietario:</label
                    ><br />
                    <input class="input" type="number" id="ident-propietario" placeholder="Ingresa tú Identificación"/>
                    <br />
                    <label class="label" for="nom-propietario">Nombre Propietario:</label
                    ><br />
                    <input class="input" type="text" id=nom-propietario" placeholder="Ingresa tú Nombre"/>
                    <br />
                    <label class="label" for="telefono">Telefono:</label><br />
                    <input class="input" type="number" id="telefono" placeholder="Ingresa tú Número de Teléfono"/>
                    <br />
                </form>

                <div >

                    <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/Servicios.jsp'">Ingresar</button>
                    <button class="botones-sistema">Registrar Mascota</button>
                    <button class="botones-sistema" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Salir</button>

                </div> 

            </div>

        </div>
    </body>
</html>
