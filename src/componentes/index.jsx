import React from 'react'
import ReactDOM from 'react-dom/client'
import "./mis_estilos.css";
import googleIcon from "../img/google-mas.png";
import facebookIcon from "../img/facebook.png";
import { Link, useNavigate } from 'react-router-dom';

const root = ReactDOM.createRoot(document.getElementById('root'))
root.render()


export const Index = () => {

  const navigate = useNavigate();

  const open = (ruta) => {

    navigate(ruta);

  }


  return (

    <div className='body'>

      <div className="bienvenida">

        <div className="formulario_spa">

          <form action="" >

          <h1 className="titulo">Bienvenido</h1>

          <label for="email" className="label">Usuario: </label><br />
          <input type="email" className="input" id="email" placeholder="Ingresa tú Email"/>
          <br />
          <label for="contrasena" className="label">Contraseña: </label><br />
          <input type="password" className="input" id="contrasena" placeholder="Ingresa tú contraseña"/>
          <br /><br />

          <div className="botones">
            <button className="botones-sistema" onClick={() => open("/servicios")}>Ingresar</button>
          </div>
          <br /><br />
          <p className="label-1">ó ingresa con</p>

          <ul className="ul-botones">
            <li>
              <img src={googleIcon} alt="icono de google mas" />
            </li>

            <li>
              <img src={facebookIcon} alt="icono de facebook" />
            </li>
          </ul>

          <br /><br />

          </form>
          <div className="botones">
            <Link to="/registrousuarios" className="links" id="registro-user">Registrarse</Link>

            <Link to="#" className="links">Olvido Contraseña</Link>
          </div>
          <dialog className="manejo-errores" title="Advertencia">
            <p className="texto-interno">La Contraseña o el Usuario no coinciden</p>
            <button className="salir-ventana-emergente">Salir</button>
          </dialog>
        </div>
      </div>
    </div>
  )
}
