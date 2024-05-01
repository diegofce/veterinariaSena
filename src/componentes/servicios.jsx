import React, { useState } from "react";
import { useNavigate } from "react-router-dom";


export const Servicios = () => {

    const navigate = useNavigate();
    const [servicioSolicitado, setServicioSolicitado] = useState("");

    const open = (ruta) => {

        navigate(ruta)

    }

    const validate = () => {

        if(servicioSolicitado === "Spa") {

            open("/Spa");

        } else if (servicioSolicitado === "Alimentos para Mascotas") {

            open("/alimentosmascotas");

        } else if (servicioSolicitado === "Accesorios para Mascotas") {

            open("/accesoriosmascotas");

        } else if (servicioSolicitado === "Medicamentos para Mascotas") {

            open("/medicamentosmascotas");

        } else {

            alert("El Servicio Solicitado No Esta Disponible!!");

        }
    }
   

    return ( 

        <div className='body'> 

            <div className="bienvenida">


                <div className="formulario_spa">

                    <form action="" >

                    <h1 className="titulo">Servicios</h1>

                    <label htmlFor="servicios" className="label">Nombre del Servicio: </label>
                    <br />
                    <select className="input" name="servicios" id="servicios" onChange={(e) => setServicioSolicitado(e.target.value)}>

                        <option value=""></option>
                        <option value="Spa">Spa</option>
                        <option value="Urgencias">Urgencias</option>
                        <option value="Agendar Cita Veterinaria">Agendar Cita Veterinaria</option>
                        <option value="Accesorios para Mascotas">Accesorios para Mascotas</option>
                        <option value="Alimentos para Mascotas">Alimentos para Mascotas</option>
                        <option value="Medicamentos para Mascotas">Medicamentos para Mascotas</option>

                    </select>
                    <br />

                    <label htmlFor="identificacion" className="label">Identificación del Solicitante: </label>
                    <br />
                    <input type="number" className="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                    <br />
                    <label htmlFor="nombre" className="label">Solicitante del Servicio: </label>
                    <br />
                    <input type="text" className="input" id="nombre" placeholder="Ingresa tú Nombre"/> 
                    <br /><br />

                    <div className="botones">

                        <button className="botones-sistema" onClick={validate}>Ingresar al Servicio</button>

                    </div>
                    <br /><br />

                    </form>
                    <div className="button">
                        
                        <button className="botones-sistema" onClick={ () => open("/")}>Inicio</button>

                    </div>
                    <br /><br />
                    
                    <dialog className="manejo-errores" title="Advertencia">

                        <p className="texto-interno">El Servicio Solicitado No Está Disponible</p>
                        <button className="salir-ventana-emergente">Salir</button>

                    </dialog>

                </div>
                
            </div>

        </div>

    );
}
