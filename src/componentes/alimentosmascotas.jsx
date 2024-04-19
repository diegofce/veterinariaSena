//importamos React
import React from "react";

//creamos el componente de la página de alimentos
export const AlimentosParaMascotas = () => {

    return ( 

        //creamos el div que manejara todo el contenido de la página
        <div className="body">

            <div className="bienvenida">

                <div className="menu">

                    <label className="label" for="">Filtros</label>

                    <details>
                        <summary className="opciones-menu">Categorías</summary>
                        <nav className="menus">
                            <ul className="ul-menu1">
                            <li><input type="checkbox" id="concentrados"/><label className="label-check1" for="concentrados">Concentrados</label></li>
                            <li><input type="checkbox" id="trozos_humedos"/><label className="label-check1" for="trozos_humedos">Trozos Húmedos</label></li>
                            <li><input type="checkbox" id="snacks"/><label className="label-check1" for="snacks">Snacks</label></li>
                            <li><input type="checkbox" id="huesos"/><label className="label-check1" for="huesos">Huesos</label></li>
                            <li><input type="checkbox" id="galletas"/><label className="label-check1" for="galletas">Galletas</label></li>
                            <li><input type="checkbox" id="otros_alimentos"/><label className="label-check1" for="otros_alimentos">Otros alimentos</label></li>
                            </ul>
                        </nav>
                    </details>
                    <details>
                        <summary className="opciones-menu">Marca</summary>
                        <nav>
                            <ul className="ul-menu1">
                            <li><input type="checkbox" id="comida_max"/><label className="label-check1" for="comida_max">Comida Max</label></li>
                            <li><input type="checkbox" id="comida_liver-care"/><label className="label-check1" for="comida_liver-care">Comida Liver Care</label></li>
                            <li><input type="checkbox" id="comida_hills"/><label className="label-check1" for="comida_hills">Comida Hills</label></li>
                            <li><input type="checkbox" id="comida_chunky"/><label className="label-check1" for="comida_chunky">Comida Chunky</label></li>
                            </ul>
                        </nav>
                    </details>
                </div>
                
                <div>

                    <form action="" className="formulario">

                        <h1 className="titulo">Alimento Para Mascotas</h1>

                        <label for="tipo-mascota" className="label">Selecciona el tipo de mascota: </label>
                        <br />
                        <select className="input" name="tipo-mascota" id="tipo-mascota">
                            <option value=""></option>
                            <option value="Perros">Perros</option>
                        </select>
                        <br />
                        <label for="identificacion" className="label">Identificación del Solicitante: </label>
                        <br />
                        <input type="number" className="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                        <br />
                        <label for="nombre" className="label">Solicitante del Servicio: </label>
                        <br />
                        <input type="text" className="input" id="nombre" placeholder="Se Muestra tú Nombre"/>
                        <br /><br />
                        <label for="porductos" className="label">Listado de Alimentos Según Mascota: </label>
                        <br />
                        <fieldset className="productos" id="productos">

                            <div className="mostrador" id="mostrador">

                            <div className="fila">

                                <div className="item">

                                    <div className="contenedor-foto">

                                        <img src={require("../img/comida_max sin fondo.png")} alt=""/>
                                        <p className="descripcion-articulos">Max Performance Perros adultos Pollo y Arroz 20 Kg + 2 Kg</p>
                                        <span className="precio">$ 283.794</span>

                                    </div>
                                </div>
                                <div className="item">

                                    <div className="contenedor-foto">
                                        <img src={require("../img/comida_chunky sin fondo.png")} alt=""/>
                                        <p className="descripcion-articulos">Chunky Perros Adultos Pollo 25 Kg</p>
                                        <span className="precio">$ 167.147</span>
                                    </div>

                                </div>
                                <div className="item">

                                    <div className="contenedor-foto">
                                        <img src={require("../img/comida_liver-care sin fondo.png")} alt=""/>
                                        <p className="descripcion-articulos">Hills Prescription Diet Perros Liver Care l/d 17.6 Lb</p>
                                        <span className="precio">$ 312.073</span>
                                    </div>

                                </div>
                                <div className="item">

                                    <div className="contenedor-foto">
                                        <img src={require("../img/comida_hills sin fondo.png")} alt=""/>
                                        <p className="descripcion-articulos">Hills Canine adult small bite 15 Lb</p>
                                        <span className="precio">$ 283.794</span>
                                    </div>

                                </div>
                            </div>
                            <div className="fila">

                                <div className="item">

                                    <div className="contenedor-foto">

                                        <img src={require("../img/comida_weight_loss sin fondo.png")} alt=""/>
                                        <p className="descripcion-articulos">Hills Prescription Diet Perros Weight Reduction r/d 27.5 Lb</p>
                                        <span className="precio">$ 438.325</span>
                                        
                                    </div>

                                </div>
                            </div>
                            </div>
                        </fieldset>
                    
                        <br /><br />
                        <article className="botones">
                            <button className="botones-sistema">Generar Servicio</button>
                            <button className="botones-sistema">Gestionar Pago</button>
                            <button className="botones-sistema">Salir</button>
                        </article>
                        <br /><br />

                        <dialog className="manejo-errores" title="Advertencia">
                            <p className="texto-interno">El Alimento Solicitado No Está Disponible</p>
                            <button className="salir-ventana-emergente">Salir</button>
                        </dialog>
                    </form>
                </div>
                
            /</div>

        </div>

    );
}
