import React from "react";
import { useNavigate } from "react-router-dom";

export const Urgencias = () => {
  const navigate = useNavigate();

  const open = (ruta) => {
    navigate(ruta);
  };

  return (
    <div className="body">
      <div className="bienvenida">
        <div className="formulario_spa">
          <h1 className="titulo">Urgencias</h1>
          <p className="parrafos">Página en Construcción</p>
          <br />
          <br />
          <div className="botones">
            <button className="botones-sistema" onClick={() => open("/")}>
              Inicio
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};
