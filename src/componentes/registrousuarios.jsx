// realizamos las importaciones necesarias
import React from "react";
import { useForm } from "react-hook-form";
import { useNavigate } from "react-router-dom";
import { Modal } from "./modal";
import { useModal } from "./useModal";
import garras from "../img/icons8-huellas-de-garras-96.png";
import garras2 from "../img/icons8-huellas-de-garras-48.png";

// construimos el componente
export const RegistroUsuarios = () => {
  // usamos el useForm
  const { register, handleSubmit } = useForm();
  // usamos el useModal personalizado
  const [isOpenRegistro, openRegistro, closeRegistro] = useModal(false);
  // usamos el useNavigate para que los botones funcionen
  const navigate = useNavigate();
  // creamos la función para el manejo de los datos
  const enviar = (data) => {
    console.log(data);
  };

  // creamos la función para la funcionalidad de los botones
  const open = (ruta) => {
    navigate(ruta);
  };
  // retonamos la página
  return (
    <div className="body">
      <div className="bienvenida">
        <div className="formulario_spa">
          <form action="" onSubmit={handleSubmit(enviar)}>
            <h1 className="titulo">Registro de Usuario</h1>

            <label className="label" htmlFor="primernombre">
              Primer Nombre:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="primernombre"
              placeholder="Ingresa tu Primer Nombre"
              {...register("primernombre")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="segundonombre">
              Segundo Nombre:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="segundonombre"
              placeholder="Ingresa tu Segundo Nombre"
              {...register("segundonombre")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="primerapellido">
              Primer Apellido:{" "}
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="primerapellido"
              placeholder="Ingresa tu Primer Apellido"
              {...register("primerapellido")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="segundoapellido">
              Segundo Apellido:{" "}
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="segundoapellido"
              placeholder="Ingresa tu Segundo Apellido"
              {...register("segundoapellido")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="identificacion">
              Identificación:
            </label>
            <br />
            <input
              className="input"
              type="number"
              id="identificacion"
              placeholder="Ingresa tú número de Identificación"
              {...register("identificacion")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="fech-nacimiento">
              Fecha de Nacimiento:
            </label>
            <br />
            <input
              className="input"
              type="date"
              id="fech-nacimiento"
              placeholder="Ingresa tú fecha de Nacimiento"
              {...register("fechanacimiento")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="email">
              Correo Electrónico:
            </label>
            <br />
            <input
              className="input"
              type="email"
              id="email"
              placeholder="Ingresa tú correo electronico"
              {...register("email")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="telefono">
              Número Telefónico:
            </label>
            <br />
            <input
              className="input"
              type="phone"
              id="telefono"
              placeholder="Ingresa tú Número de Telefono"
              {...register("telefono")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="direccion">
              Dirección Residencia:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="direccion"
              placeholder="Ingresa tú dirección"
              {...register("direccion")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="ciudad">
              Ciudad Residencia:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="ciudad"
              placeholder="Ingresa la Ciudad de Residencia"
              {...register("ciudad")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <label className="label" htmlFor="departamento">
              Departamento Residencia:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="departamento"
              placeholder="Ingresa el departamento de Residencia"
              {...register("departamento")} //capturamos el valor introducido por el Usuario
            />
            <br />
            <br />
            <div className="botones">
              <button className="botones-sistema" onClick={openRegistro}>
                Registrarse
              </button>
            </div>
          </form>
          <br />
          <div className="button">
            <button
              className="botones-sistema"
              onClick={() => open("/registromascota")} //navega desde el boton a la página en mención
            >
              Registrar Mascota
            </button>
            <button className="botones-sistema" onClick={() => open("/")}>
              {" "}
              {/*navega desde el boton a la página en mención */}
              Inicio
            </button>
          </div>
          {/* creación de la ventana modal */}
          <div>
            <Modal isOpen={isOpenRegistro} closeModal={closeRegistro}>
              <div>
                <img src={garras2} alt="iconos de garras mas pequeños" />
                <img src={garras} alt="iconos" />
                <img src={garras2} alt="iconos de garras mas pequeños" />
              </div>
              <div>
                <h2>Confirmación!!</h2>
                <p>El Usuario Se Ha Creado Con Exito</p>
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
