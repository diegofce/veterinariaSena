import React from "react";

export const Servicios = () => {

    return ( 

        <div className='body'> 

            <div className="bienvenida">

                

                <form action="" class="formulario_spa">

                    <h1 className="titulo">Servicios</h1>

                    <label for="servicios" className="label">Nombre del Servicio: </label>
                    <br />
                    <select className="input" name="servicios" id="servicios">

                        <option value=""></option>
                        <option value="Spa">Spa</option>

                    </select>
                    <br />

                    <label for="identificacion" className="label">Identificación del Solicitante: </label>
                    <br />
                    <input type="number" className="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                    <br />
                    <label for="nombre" className="label">Solicitante del Servicio: </label>
                    <br />
                    <input type="text" className="input" id="nombre" placeholder="Ingresa tú Nombre"/> 
                    <br /><br />

                    <dialog className="manejo-errores" title="Advertencia">

                        <p className="texto-interno">El Servicio Solicitado No Está Disponible</p>
                        <button className="salir-ventana-emergente">Salir</button>

                    </dialog>

                    <br /><br />

                    <div className="botones">

                        <button className="botones-sistema">Ingresar al Servicio</button>
                        <button className="botones-sistema">Salir</button>

                    </div>
                    <br /><br />

                </form>

                
            </div>

        </div>

    );
}
