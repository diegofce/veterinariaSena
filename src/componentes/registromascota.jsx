import React from "react";
import { useForm } from "react-hook-form";
import { useNavigate } from "react-router-dom";

export const RegistroMascota = () => {
  const { register, handleSubmit } = useForm();

  const navigate = useNavigate();

  const Open = (ruta) => {
    navigate(ruta);
  };

  const enviar = (data) => {
    data.vacuna1 = data.vacuna1 ? "Rabia" : "";
    data.vacuna2 = data.vacuna2 ? "Parvovirosis" : "";

    console.log(data);
  };

  return (
    <div className="body">
      <div className="bienvenida">
        <div className="formulario_spa">
          <form action="" onSubmit={handleSubmit(enviar)}>
            <h1 className="titulo">Registro de Mascotas</h1>

            <label className="label" htmlFor="nombre mascota">
              Nombre Mascota:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="nombre mascota"
              placeholder="Ingresa el Nombre de la Mascota"
              {...register("nombre mascota")}
            />
            <br />
            <label className="label" htmlFor="raza">
              Raza:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="raza"
              placeholder="Ingresa la raza de la Mascota"
              {...register("raza")}
            />
            <br />
            <label className="label" htmlFor="especie">
              Especie:
            </label>
            <br />
            <select
              className="input"
              name="Especie"
              id="especie"
              {...register("specie")}
            >
              <option className="input" value=""></option>
              <option className="input" value="Perro">
                Perro
              </option>
              <option className="input" value="Gato">
                Gato
              </option>
              <option className="input" value="Conejo">
                Conejo
              </option>
              <option className="input" value="Cerdo">
                Cerdo
              </option>
            </select>
            <br />

            <div class="bienvenida-1">
              <label className="label" htmlFor="edad">
                Edad Mascota:
              </label>
              <label className="label-2" htmlFor="peso">
                Peso Mascota:
              </label>

              <div>
                <input
                  className="input-1"
                  type="number"
                  id="edad"
                  placeholder="Ingresa la Edad "
                  {...register("edad")}
                />
                <span className="label" htmlFor="peso">
                  Años
                </span>
              </div>

              <div>
                <input
                  className="input-1"
                  type="number"
                  id="peso"
                  placeholder="Ingresa el Peso"
                  {...register("peso")}
                />
                <span className="label" htmlFor="peso">
                  Kg
                </span>
              </div>
            </div>

            <div className="bienvenida-1">
              <label className="label" htmlFor="vacunas">
                Vacunas:
              </label>
              <label className="label-2" htmlFor="cant-vacunas">
                Cantidad Vacunas:
              </label>

              <input
                className="checkbox"
                type="checkbox"
                name="vacuna1"
                id="checkbox1"
                {...register("vacuna1")}
              />
              <label className="label-check" htmlFor="checkbox1">
                Rabia
              </label>

              <select
                className="input-2"
                name="Cantidad Vacunas"
                id="checkbox1"
                {...register("cantidad1")}
              >
                <option className="input-2" value=""></option>
                <option className="input-2" value="1">
                  1
                </option>
                <option className="input-2" value="2">
                  2
                </option>
                <option className="input-2" value="3">
                  3
                </option>
                <option className="input-2" value="4">
                  4
                </option>
              </select>

              <input
                className="checkbox"
                type="checkbox"
                name="checkbox2"
                id="checkbox2"
                {...register("vacuna2")}
              />
              <label className="label-check" htmlFor="checkbox2">
                Parvovirosis
              </label>

              <select
                className="input-2"
                name="Cantidad Vacunas"
                id="checkbox2"
                {...register("cantidad2")}
              >
                <option className="input-2" value=""></option>
                <option className="input-2" value="1">
                  1
                </option>
                <option className="input-2" value="2">
                  2
                </option>
                <option className="input-2" value="3">
                  3
                </option>
                <option className="input-2" value="4">
                  4
                </option>
              </select>
            </div>

            <label className="label" htmlFor="ident-propietario">
              Identificacón Propietario:
            </label>
            <br />
            <input
              className="input"
              type="number"
              id="ident-propietario"
              placeholder="Ingresa tú Identificación"
              {...register("identificacion")}
            />
            <br />
            <label className="label" htmlFor="nom-propietario">
              Nombre Propietario:
            </label>
            <br />
            <input
              className="input"
              type="text"
              id="nom-propietario"
              placeholder="Ingresa tú Nombre"
              {...register("nombrepropietario")}
            />
            <br />
            <label className="label" htmlFor="telefono">
              Telefono:
            </label>
            <br />
            <input
              className="input"
              type="phone"
              id="telefono"
              placeholder="Ingresa tú Número de Teléfono"
              {...register("telefono")}
            />
            <br />

            <div className="botones">
              <button className="botones-sistema">Registrar Mascota</button>
            </div>
          </form>

          <br />

          <div className="button">
            <button className="botones-sistema" onClick={() => Open("/")}>
              Inicio
            </button>
            <button
              className="botones-sistema"
              onClick={() => Open("/servicios")}
            >
              Ingresar
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};
