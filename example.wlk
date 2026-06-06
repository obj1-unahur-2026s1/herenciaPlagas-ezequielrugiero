class Plagas {
  var poblacion
  var nivelDeDaños = 0

  method poblacion()=poblacion
  method nivelDeDaños ()=nivelDeDaños

  method catidadDePoblacion(unCandidad){
    poblacion += unCandidad
  }
  method nivelDañoAlAtacar(){

  }

  method tramitirEnfermdades(){
    return self.poblacion() >= 10 and self.condicionAdicional()
  }

  method condicionAdicional()


}

class Cucarachas inherits Plagas {
  var pesoActual = self.pesoPorCucaracha()

  method pesosActual()=pesoActual

   method pesoPorCucaracha (){
     return self.poblacion() * 8
   } 

    override method nivelDeDaños(){
       return  self.poblacion().div(2)
   }

   override method condicionAdicional(){
      return pesoActual >= 10
   }

}

class Pulgas inherits Plagas {


  override method nivelDeDaños(){
       return  self.poblacion()*2
  }
  override method condicionAdicional(){}

}

class Garrapatas inherits Pulgas {

}


class Mosquito inherits Plagas{
  
  
  override method nivelDeDaños(){
       return  self.poblacion()
  }
  override method condicionAdicional(){
    return self.poblacion() % 3 == 0
  }

}


