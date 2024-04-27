import React from "react";

export const MedicamentosParaMascotas = () => {


    return ( 

        <div className="body">

            <div className="bienvenida">

                <div className="menu">

                    <div>
                        <label className="label">Filtros</label>

                        <details>

                            <summary className="opciones-menu">Categorías</summary>

                            <nav className="menus">
                                <ul className="ul-menu1" id="categorias">

                                    <li><input type="checkbox" id="antipulgas"/><label className="label-check1" htmlFor="antipulgas">Antipulgas</label></li>
                                    <li><input type="checkbox" id="antiparasitarios"/><label className="label-check1" htmlFor="antiparasitarios">Antiparasitarios</label></li>
                                    <li><input type="checkbox" id="vitaminas"/><label className="label-check1" htmlFor="vitaminas">Vitaminas</label></li>
                                    <li><input type="checkbox" id="suplementos"/><label className="label-check1" htmlFor="suplementos">Suplementos</label></li>
                                    <li><input type="checkbox" id="medicamentos"/><label className="label-check1" htmlFor="medicamentos">Medicamentos</label></li>

                                </ul>

                            </nav>

                        </details>

                        <details>

                            <summary className="opciones-menu">Marca</summary>

                            <nav className="menus">

                                <ul className="ul-menu1" id="categorias">

                                    <li><input type="checkbox" id="hills"/><label className="label-check1" htmlFor="hills">Hills</label></li>
                                    <li><input type="checkbox" id="bayer"/><label className="label-check1" htmlFor="bayer">Bayer</label></li>
                                    <li><input type="checkbox" id="bistop"/><label className="label-check1" htmlFor="bistop">Bistop</label></li>
                                    <li><input type="checkbox" id="baytril"/><label className="label-check1" htmlFor="baytril">Baytril</label></li>

                                </ul>

                            </nav>

                        </details>
                    </div>

                </div>

                <div>
                    <form action="" className="formulario">
                        
                        <h1 className="titulo">Medicamentos Para Mascotas</h1>

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

                                            <img src={require ("../img/Traumeel_Caja_x_50_tabletas sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Traumeel Caja x 50 tabletas</p>
                                            <span className="precio">$ 87.741</span>

                                        </div>

                                    </div>

                                    <div className="item">

                                        <div className="contenedor-foto">

                                            <img src={require ("../img/Zeel_Compositum_AD_US_VET_x_100_Tabletas sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Zeel Compositum AD US VET x 100 Tabletas</p>
                                            <span className="precio">$ 137.580</span>
                                            
                                        </div>

                                    </div>

                                    <div className="item">

                                        <div className="contenedor-foto">

                                            <img src={require ("../img/Antiparasitario_Drontal_para_gatos sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Antiparasitario Drontal para gatos</p>
                                            <span className="precio">$ 20.814</span>

                                        </div>

                                    </div>

                                    <div className="item">

                                        <div className="contenedor-foto">

                                            <img src={require ("../img/Galgocal_Antiparasitario_Interno_para_Perros_y_Gatos_200_x_2_Tabletas sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Galgocal Antiparasitario Interno para Perros y Gatos 200 x 2 Tabletas</p>
                                            <span className="precio">$ 3.335</span>

                                        </div>

                                    </div>
                                </div>

                                <div className="fila">

                                    <div className="item">

                                        <div className="contenedor-foto">

                                            <img src={require ("../img/Credelio_Cat_por_48mg_para_gatos_de__2_a_8Kg__3_Tbls_Azul sin fondo.png")} alt=""/>
                                            <p className="descripcion-articulos">Credelio Cat por 48mg para gatos de (2 a 8Kg) 3 Tbls Azul</p>
                                            <span className="precio">$ 77.056</span>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </fieldset>

                        <dialog className="manejo-errores" title="Advertencia">
                            <p className="texto-interno">El Alimento Solicitado No Está Disponible</p>
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
        </div>
    );
}
