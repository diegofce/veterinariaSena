import React from "react";

export const Spa = () => {


    return (  

        <div className='body'> 

            <div className="bienvenida_spa">

                <form action="" className="formulario_spa">

                    <h1 className="titulo">Agendar cita para Servicio de Spa</h1>

                    <label for="identificacion" className="label">Identificación del Solicitante: </label>
                    <br />
                    <input type="number" className="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                    <br />
                    <label for="nombre" className="label">Solicitante del Servicio: </label>
                    <br />
                    <input type="text" className="input" id="nombre" placeholder="Ingresa tú Nombre"/>
                    <br /><br />

                    <div className="bienvenida-1-1">

                        <div>

                            <label for="fecha-servicio" className="label">Fecha del Servicio: </label>
                            <br />
                            <input className="input-1" type="date" name="fecha-servicio" id="fecha-servicio"/>

                        </div>
                        
                        <div>

                            <label for="hora-servicio" className="label">Hora del Servicio:</label>
                            <br />
                            <input className="input-1" type="time" name="hora-servicio" id="hora-servicio"/>

                        </div>

                    </div>

                    <label for="nombre-mascota" className="label">Nombre de la Mascota: </label>
                    <br />
                    <input type="text" className="input" id="nombre-mascota" placeholder="Ingresa el Nombre de la Mascota"/>
                    <br />
                    <label for="valor-servicio" className="label">Valor del Servicio: </label>
                    <br />
                    <input type="number" className="input" id="valor-servicio" placeholder="valor del servicio"/>

                    <dialog className="manejo-errores" title="Advertencia">
                        <p className="texto-interno">El Servicio Solicitado No Está Disponible en esa Fecha</p>
                        <button className="salir-ventana-emergente">Salir</button>
                    </dialog>

                    <br /><br />

                    <div className="botones">

                        <button className="botones-sistema">Generar Servicio</button>
                        <button className="botones-sistema">Gestionar Pago</button>
                        <button className="botones-sistema">Salir</button>

                    </div>
                    <br /><br />

                </form>
   
            </div>

        </div>
    );
}
 
