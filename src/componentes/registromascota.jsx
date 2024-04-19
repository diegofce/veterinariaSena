import React from "react";

export const RegistroMascota = () => {

    return ( 

        <div className='body'>

            <div className="bienvenida">

                <form action="" className="formulario_spa">

                    <h1 className="titulo">Registro de Mascotas</h1>

                    <label className="label" for="nombre mascota">Nombre Mascota:</label>
                    <br />
                    <input className="input" type="text" id="nombre mascota" placeholder="Ingresa el Nombre de la Mascota"/>
                    <br />
                    <label className="label" for="raza">Raza:</label>
                    <br />
                    <input className="input" type="text" id="raza" placeholder="Ingresa la raza de la Mascota"/>
                    <br />
                    <label className="label" for="especie">Especie:</label>
                    <br />
                    <select className="input" name="Especie" id="especie">

                        <option className="input" value=""></option>
                        <option className="input" value="Perro">Perro</option>
                        <option className="input" value="Gato">Gato</option>
                        <option className="input" value="Conejo">Conejo</option>
                        <option className="input" value="Cerdo">Cerdo</option>

                    </select>
                    <br />

                    <article class="bienvenida-1">

                        <label className="label" for="edad">Edad Mascota:</label>
                        <label className="label-2" for="peso">Peso Mascota:</label>

                        <article>

                            <input className="input-1" type="number" id="edad" placeholder="Ingresa la Edad "/>
                            <span className="label" for="peso">Años</span>

                        </article>

                        <article>

                            <input className="input-1" type="number" id="peso" placeholder="Ingresa el Peso"/><span className="label" for="peso">Kg</span>

                        </article>

                    </article>

                    <article className="bienvenida-1">

                        <label className="label" for="vacunas">Vacunas:</label>
                        <label className="label-2" for="cant-vacunas">Cantidad Vacunas:</label>

                        <input className="checkbox" type="checkbox" name="checkbox" id="checkbox1"/>
                        <label className="label-check" for="checkbox1">Rabia</label>

                        <select className="input-2" name="Cantidad Vacunas" id="checkbox1">

                            <option className="input-2" value=""></option>
                            <option className="input-2" value="1">1</option>
                            <option className="input-2" value="2">2</option>

                        </select>

                        <input className="checkbox" type="checkbox" name="checkbox" id="checkbox2"/>
                        <label className="label-check" for="checkbox2">Parvovirosis</label>

                        <select className="input-2" name="Cantidad Vacunas" id="checkbox2">

                            <option className="input-2" value=""></option>
                            <option className="input-2" value="1">1</option>
                            <option className="input-2" value="2">2</option>

                        </select>

                    </article>

                    <label className="label" for="ident-propietario">Identificacón Propietario:</label>
                    <br />
                    <input className="input" type="number" id="ident-propietario" placeholder="Ingresa tú Identificación"/>
                    <br />
                    <label className="label" for="nom-propietario">Nombre Propietario:</label>
                    <br />
                    <input className="input" type="text" id="nom-propietario" placeholder="Ingresa tú Nombre"/>
                    <br />
                    <label className="label" for="telefono">Telefono:</label>
                    <br />
                    <input className="input" type="phone" id="telefono" placeholder="Ingresa tú Número de Teléfono"/>
                    <br />

                    <article className="botones">

                        <button className="botones-sistema">Registrar Mascota</button>
                        <button className="botones-sistema">Inicio</button>
                        <button className="botones-sistema">Salir</button>

                    </article>

                </form>

                

            </div>

        </div>

    );
}
