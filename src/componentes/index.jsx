import React from "react";
import "./mis_estilos.css";
import googleIcon from "../img/google-mas.png";
import facebookIcon from "../img/facebook.png";
import garras from "../img/icons8-huellas-de-garras-96.png";
import garras2 from "../img/icons8-huellas-de-garras-48.png";
import { Link } from "react-router-dom";
import { Modal } from "./modal";
import { useModal } from "./useModal";
import { useForm } from "react-hook-form";

/*creamos el componente*/

export const Index = () => {
  //para obtener la informacion del formulario
  const { register, handleSubmit } = useForm();

  const [isOpenGoogle, openModalGoogle, closeModalGoogle] = useModal(false);
  const [isOpenFacebook, openModalFacebook, closeModalFacebook] =
    useModal(false);
  const [isOpenAdvertencia, openModalAdvertencia, closeModalAdvertencia] =
    useModal(false);
  const [isOpenExito, openModalExito, closeModalExito] = useModal(false);

  //funcion para el manejo del formulario
  const enviar = (data) => {
    console.log(data);
    if (data) {
      openModalAdvertencia();
    } else {
      openModalExito();
    }
  };

  // Funciones para manejar la redirección
  const redirectToGoogle = () => {
    openModalGoogle();
  };
  const redirectToFacebook = () => {
    openModalFacebook();
  };

  //retornamos el codigo html para visualizar la página
  return (
    <div className="body">
      <div className="bienvenida">
        <div className="formulario_spa">
          <form onSubmit={handleSubmit(enviar)}>
            <h1 className="titulo">Bienvenido</h1>

            <label for="email" className="label">
              Usuario:{" "}
            </label>
            <br />
            <input
              type="email"
              className="input"
              id="email"
              placeholder="Ingresa tú Email"
              {...register("email")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label for="contrasena" className="label">
              Contraseña:{" "}
            </label>
            <br />
            <input
              type="password"
              className="input"
              id="contrasena"
              placeholder="Ingresa tú contraseña"
              {...register("contrasena")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <br />

            <div className="botones">
              <button className="botones-sistema">Ingresar</button>
            </div>
            <br />
            <br />
            <p className="label-1">ó ingresa con</p>

            <ul className="ul-botones">
              <li className="link-icono">
                <img
                  src={googleIcon}
                  alt="icono de google mas"
                  onClick={redirectToGoogle} //llamamos en una ventana moddal para el ingreso por google
                />
              </li>

              <li className="link-icono">
                <img
                  src={facebookIcon}
                  alt="icono de facebook"
                  onClick={redirectToFacebook} //llamamos en una ventana modal para el ingreso por facebook
                />
              </li>
            </ul>

            <br />
            <br />
          </form>
          <div className="botones">
            <Link to="/registrousuarios" className="links" id="registro-user">
              Registrarse
            </Link>

            <Link to="#" className="links">
              Olvido Contraseña
            </Link>
          </div>
          {/* creamos las ventanas modales */}
          <div>
            <Modal
              isOpen={isOpenGoogle}
              closeModal={closeModalGoogle}
              // mostrarBotonCerrar={false}
            >
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <iframe
                  title="Google Account Chooser"
                  src="https://accounts.google.com/AccountChooser"
                />
              </div>
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <br />
            </Modal>
          </div>
          <div>
            <Modal
              isOpen={isOpenFacebook}
              closeModal={closeModalFacebook}
              mostrarBotonCerrar={false}
            >
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <iframe
                  title="Google Account Chooser"
                  src="https://www.facebook.com/v2.8/dialog/oauth?client_id={APP_ID}&redirect_uri={REDIRECT_URI}&state={STATE}&scope={SCOPE}"
                />
              </div>
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <br />
            </Modal>
          </div>
          <div>
            <Modal
              isOpen={isOpenAdvertencia}
              closeModal={closeModalAdvertencia}
              // onCloseButtonClick={() => navigate("/")}
            >
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <h2>Advertencia!!</h2>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <p>La Contraseña o el Usuario no coinciden!</p>
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>

              <br />
            </Modal>
          </div>
          <div>
            <Modal isOpen={isOpenExito} closeModal={closeModalExito}>
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <h2>Información!!</h2>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <p>Tú Validación es Exitosa!</p>
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>

              <br />
            </Modal>
          </div>
        </div>
      </div>
    </div>
  );
};
