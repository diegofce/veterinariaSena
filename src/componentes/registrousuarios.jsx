import React from "react";
import { useForm } from "react-hook-form";


export const RegistroUsuarios = () => {

    const { register, handleSubmit} = useForm();

    const enviar = (data) => {

        console.log(data);
    }


    return ( 

        <div className='body'>

            <div className="bienvenida">

                <div className="formulario_spa">
                
                    <form action=""  onSubmit = { handleSubmit(enviar) }>
                        
                        <h1 className="titulo">Registro de Usuario</h1>

                        <label className="label" for="primernombre">Primer Nombre:</label><br />
                        <input className="input" type="text" id="primernombre" placeholder="Ingresa tus Nombres " {...register("primernombre")}/>
                        <br/>
                        <label className="label" for="segundonombre">Segundo Nombre:</label><br />
                        <input className="input" type="text" id="segundonombre" placeholder="Ingresa tus Nombres " {...register("segundonombre")}/>
                        <br />
                        <label className="label" for="primerapellido">Primer Apellido: </label>
                        <br />
                        <input className="input" type="text" id="primerapellido" placeholder="Ingresa tus Apellidos" {...register("primerapellido")}/>
                        <br />
                        <label className="label" for="segundoapellido">Segundo Apellido: </label>
                        <br />
                        <input className="input" type="text" id="segundoapellido" placeholder="Ingresa tus Apellidos" {...register("segundoapellido")}/>
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
                        <br /><br />
                        
                        <div className="botones">
                            <button className="botones-sistema" type="submit">Registrarse</button>
                        </div>
                        <br/>
                        
                    </form>
                    <div className="button">

                        <button className="botones-sistema">Registrar Mascota</button>
                        <button className="botones-sistema" >Salir</button>

                    </div>
                </div>
                
            </div>

        </div>

    );
}
 
