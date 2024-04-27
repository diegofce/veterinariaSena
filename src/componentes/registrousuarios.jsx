import React from "react";
import { useForm } from "react-hook-form";
import { useNavigate } from "react-router-dom";



export const RegistroUsuarios = () => {

    const {register, handleSubmit} = useForm();

    const navigate = useNavigate();

    const enviar = (data) => {

        console.log(data)

    }

    const open = (ruta) => {

        navigate(ruta);
    
    }

    
    return ( 

        <div className='body'>

            <div className="bienvenida">

                <div className="formulario_spa">
                
                    <form action=""  onSubmit={ handleSubmit(enviar) }>
                        
                        <h1 className="titulo">Registro de Usuario</h1>

                        <label className="label" for="primernombre">Primer Nombre:</label>
                        <br />
                        <input className="input" type="text" id="primernombre" placeholder="Ingresa tu Primer Nombre" {...register("primernombre")}/>
                        <br/>
                        <label className="label" for="segundonombre">Segundo Nombre:</label>
                        <br />
                        <input className="input" type="text" id="segundonombre" placeholder="Ingresa tu Segundo Nombre" {...register("segundonombre")}/>
                        <br />
                        <label className="label" for="primerapellido">Primer Apellido: </label>
                        <br />
                        <input className="input" type="text" id="primerapellido" placeholder="Ingresa tu Primer Apellido" {...register("primerapellido")}/>
                        <br/>
                        <label className="label" for="segundoapellido">Segundo Apellido: </label>
                        <br />
                        <input className="input" type="text" id="segundoapellido" placeholder="Ingresa tu Segundo Apellido" {...register("segundoapellido")}/>
                        <br />
                        <label className="label" for="identificacion">Identificación:</label>
                        <br />
                        <input className="input" type="number" id="identificacion" placeholder="Ingresa tú número de Identificación" {...register("identificacion")}/>
                        <br />
                        <label className="label" for="fech-nacimiento">Fecha de Nacimiento:</label> 
                        <br />
                        <input className="input" type="date" id="fech-nacimiento" placeholder="Ingresa tú fecha de Nacimiento" {...register("fechanacimiento")}/>
                        <br />
                        <label className="label" for="email">Correo Electrónico:</label>
                        <br />
                        <input className="input" type="email" id="email" placeholder="Ingresa tú correo electronico" {...register("email")}/>
                        <br />
                        <label className="label" for="telefono">Número Telefónico:</label>
                        <br />
                        <input className="input" type="phone" id="telefono" placeholder="Ingresa tú Número de Telefono" {...register("telefono")}/>
                        <br />
                        <label className="label" for="direccion">Dirección Residencia:</label>
                        <br />
                        <input className="input" type="text" id="direccion" placeholder="Ingresa tú dirección" {...register("direccion")}/>
                        <br />
                        <label className="label" for="ciudad">Ciudad Residencia:</label>
                        <br />
                        <input className="input" type="text" id="ciudad" placeholder="Ingresa la Ciudad de Residencia" {...register("ciudad")}/>
                        <br/>
                        <label className="label" for="departamento">Departamento Residencia:</label>
                        <br />
                        <input className="input" type="text" id="departamento" placeholder="Ingresa el departamento de Residencia" {...register("departamento")}/>
                        <br /><br />
                        <div className="botones">
                            <button className="botones-sistema">Registrarse</button>
                        </div>
                    </form>
                    <br/>
                    <div className="button">
                        <button className="botones-sistema" onClick={() => open("/registromascota")}>Registrar Mascota</button>
                        <button className="botones-sistema" onClick={() => open("/")}>Inicio</button>
                    </div>

                </div>

                
            </div>

        </div>

    );
}
 
