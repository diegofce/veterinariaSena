import React from "react";
import { Link } from "react-router-dom";

export const Footer = () => {

    return ( 

        <footer className="footer">
            <div className="container-footer">
                <div className="footer-row">

                    <div className="footer-links">

                        <h4>Compañia</h4>

                        <ul>
                            <li><Link to= "#">Nosotros</Link></li>
                            <li><Link to= "#">Misión</Link></li>
                            <li><Link to= "#">Visión</Link></li>
                            <li><Link to= "#">Politica de Privacidad</Link></li>
                        </ul>

                    </div>

                    <div className="footer-links">

                        <h4>Ayuda</h4>

                        <ul>
                            <li><Link to= "#">Preguntas</Link></li>
                            <li><Link to= "#">Compras</Link></li>
                            <li><Link to= "#">Pagos</Link></li>
                        </ul>

                    </div>

                    <div className="footer-links">

                        <h4>Tienda</h4>

                        <ul>
                            <li><Link to= "#">Alimentos para Mascotas</Link></li>
                            <li><Link to= "#">Accesorios para Mascotas</Link></li>
                            <li><Link to= "#">Medicamentos para Mascotas</Link></li>
                        </ul>

                    </div>

                    <div className="social-links">

                        <h4>Siguenos</h4>

                        <div>
                            <Link to= "#"><i className="fab fa-facebook-f"></i></Link>
                            <Link to= "#"><i className="fab fa-instagram"></i></Link>
                            <Link to= "#"><i className="fab fa-twitter"></i></Link>
                            <Link to= "#"><i className="fab fa-linkedin"></i></Link>
                            
                        </div>

                    </div>

                </div>
            </div>
        </footer> 
    );
}
