//importamos lo necesario par el funcionamiento de la página
import { Index } from './componentes';
import { NavBar } from './componentes/navbar';
import './componentes/mis_estilos.css';
import { RegistroMascota } from './componentes/registromascota';
import { RegistroUsuarios } from './componentes/registrousuarios';
import { BrowserRouter, Route, Routes } from "react-router-dom";
import { Servicios } from './componentes/servicios';
import { Spa } from './componentes/spa';
import { AlimentosParaMascotas } from './componentes/alimentosmascotas';
import { AccesoriosParaMascotas } from './componentes/accesoriosmascotas';
import { MedicamentosParaMascotas } from './componentes/medicamentosmascotas';


//creams la funcion para el manejo de la web
function App() {
  return (

    //Llamamos el BrowserRouter para generar las rutas de navegación
    <BrowserRouter className="App">
      
      {/*para que el menú este en todas las páginas*/}
      <NavBar />

      {/*creamos las rutas para la navegación entre páginas*/}
      <Routes>

        <Route path='/' element={<Index />}/> 
        <Route path='/registrousuarios' element={< RegistroUsuarios /> } />
        <Route path='/registromascota' element = { <RegistroMascota /> } />
        <Route path='/servicios' element= { <Servicios /> } />
        <Route path='/spa' element = { <Spa /> } />
        <Route path='/alimentosmascotas' element = { <AlimentosParaMascotas /> } />
        <Route path='/accesoriosmascotas' element = { <AccesoriosParaMascotas /> } />
        <Route path='/medicamentosmascotas' element = { <MedicamentosParaMascotas /> } />index
        
        
      </Routes>

      <footer>
        Derechos reservados de Autor
      </footer>     
    
    </BrowserRouter>

  );
}

export default App;
