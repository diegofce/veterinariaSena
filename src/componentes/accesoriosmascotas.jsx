import React from "react";

export const AccesoriosParaMascotas = () => {


    return ( 

        <div className="body">

            <div className="bienvenida">

                <div className="menu">

                    <label className="label" >Filtros</label>
                    <details>
                        <summary className="opciones-menu">Categorías</summary>
                        <nav className="menus">
                            <ul className="ul-menu1" id="categorias">
                            <li><input type="checkbox" id="Pelotas"/><label className="label-check1" htmlFor="Pelotas">Pelotas</label></li>
                            <li><input type="checkbox" id="Con Cuerdas"/><label className="label-check1" htmlFor="Con Cuerdas">Con Cuerdas</label></li>
                            <li><input type="checkbox" id="huesos"/><label className="label-check1" htmlFor="huesos">Huesos</label></li>
                            <li><input type="checkbox" id="mordedores"/><label className="label-check1" htmlFor="mordedores">Mordedores</label></li>
                            <li><input type="checkbox" id="Peluches"/><label className="label-check1" htmlFor="Peluches">Peluches</label></li>
                            </ul>
                        </nav>
                    </details>
                    <details>
                        <summary className="opciones-menu">Marca</summary>
                        <nav className="menus">
                            <ul className="ul-menu1" id="categorias">
                            <li><input type="checkbox" id="hills"/><label className="label-check1"  htmlFor="hills">Hills</label></li>
                                <li><input type="checkbox" id="animals factors"/><label className="label-check1"  htmlFor="animals factors">Animals Factors</label></li>
                                <li><input type="checkbox" id="bamboo pet"/><label className="label-check1"  htmlFor="bamboo pet">Bamboo Pet</label></li>
                                <li><input type="checkbox" id="bios pet"/><label className="label-check1"  htmlFor="bios pet">Bios Pet</label></li>
                            </ul>
                        </nav>
                    </details>
                </div>
                
                <div>

                    <form action="" className="formulario">

                        <h1 className="titulo">Accesorios Para Mascotas</h1>

                        <label className="label">Selecciona el tipo de mascota: </label>
                        <br />
                        <select className="input" name="tipo-mascota" id="tipo-mascota">
                            <option value=""></option>
                            <option value="Perros">Perros</option>
                        </select>
                        <br />
                        <label htmlFor="identificacion" className="label">Identificación del Solicitante: </label>
                        <br />
                        <input type="number" className="input" id="identificacion" placeholder="Ingresa tú Número de Identificación"/>
                        <br />
                        <label htmlFor="nombre" className="label">Solicitante del Servicio: </label>
                        <br />
                        <input type="text" className="input" id="nombre" placeholder="Se Muestra tú Nombre"/>
                        <br /><br />
                        <label className="label">Listado de Alimentos Según Mascota: </label>
                        <br />
                        <fieldset className="productos" id="productos">

                            <div className="mostrador" id="mostrador">

                                <div className="fila">

                                    <div className="item">

                                        <div className="contenedor-foto">
                                            <img src={require ("../img/Hueso_con_sonido_pequeño_para_perros sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Hueso con sonido pequeño para perros</p>
                                            <span className="precio">$ 9.992</span>
                                        </div>

                                    </div>

                                    <div className="item">

                                        <div className="contenedor-foto">
                                            <img src={require ("../img/Juguete_erizo_vinilo_pequeño_para_perro sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Juguete erizo vinilo pequeño para perro</p>
                                            <span className="precio">$ 9.992</span>
                                        </div>

                                    </div>

                                    <div className="item">

                                        <div className="contenedor-foto">
                                            <img src={require("../img/Juguete_Muslo_de_Pollo._Vinilo sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Juguete Muslo de Pollo. Vinilo</p>
                                            <span className="precio">$ 9.992</span>
                                        </div>

                                    </div>

                                    <div className="item">

                                        <div className="contenedor-foto">
                                            <img src={require ("../img/Juguete_Perro_Erizo_Sentado sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Juguete Perro Erizo Sentado</p>
                                            <span className="precio">$ 9.992</span>
                                        </div>

                                    </div>
                                </div>

                                <div className="fila">

                                    <div className="item">

                                        <div className="contenedor-foto">
                                            <img src={require ("../img/Pelota_puntos_gigantes sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Pelota puntos gigantes</p>
                                            <span className="precio">$ 16.851</span>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </fieldset>
                        <dialog className="manejo-errores" title="Advertencia">
                            <p className="texto-interno">
                                El Alimento Solicitado No Está Disponible
                            </p>
                            <button className="salir-ventana-emergente">Salir</button>
                        </dialog>
                        <br /><br />
                        <div className="botones">
                            <button className="botones-sistema">Generar Servicio</button>
                            <button className="botones-sistema">Gestionar Pago</button>
                            <button className="botones-sistema">Inicio</button>
                        </div>
                        <br /><br />
                    
                    </form>
                </div>

            </div>
            
        </div>
    );
}
