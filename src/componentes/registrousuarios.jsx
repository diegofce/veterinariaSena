import React from "react";




export const RegistroUsuarios = () => {

    
    
    return ( 

        <div className='body'>

            <div className="bienvenida">
                
                <form action="" className="formulario_spa">
                    
                    <h1 className="titulo">Registro de Usuario</h1>

                    <label className="label" for="nombre">Nombres:</label><br />
                    <input className="input" type="text" id="nombre" placeholder="Ingresa tus Nombres "/>
                    <br />
                    <label className="label" for="apellido">Apellidos: </label>
                    <br />
                    <input className="input" type="text" id="apellido" placeholder="Ingresa tus Apellidos"/>
                    <br />
                    <label className="label" for="identificacion">Identificación:</label>
                    <br />
                    <input className="input" type="number" id="identificacion" placeholder="Ingresa tú número de Identificación"/>
                    <br />
                    <label className="label" for="fech-nacimiento">Fecha de Nacimiento:</label> 
                    <br />
                    <input className="input" type="date" id="fech-nacimiento" placeholder="Ingresa tú fecha de Nacimiento"/>
                    <br />
                    <label className="label" for="email">Correo Electrónico:</label>
                    <br />
                    <input className="input" type="email" id="email" placeholder="Ingresa tú correo electronico"/>
                    <br />
                    <label className="label" for="telefono">Número Telefónico:</label>
                    <br />
                    <input className="input" type="phone" id="telefono" placeholder="Ingresa tú Número de Telefono"/>
                    <br />
                    <label className="label" for="direccion">Dirección Residencia:</label>
                    <br />
                    <input className="input" type="text" id="direccion" placeholder="Ingresa tú dirección"/>
                    <br />
                    <label className="label" for="ciudad">Ciudad Residencia:</label>
                    <br />
                    <input className="input" type="text" id="ciudad" placeholder="Ingresa la Ciudad de Residencia"/>
                    <br /><br />
                    <article className="botones">
                        <button className="botones-sistema">Registrarse</button>
                        <button className="botones-sistema">Registrar Mascota</button>
                        <button className="botones-sistema" >Salir</button>
                    </article>
                </form>

                
            </div>

        </div>

    );
}
 
