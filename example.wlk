
import elementos.*
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

  method atacarA(unElemento){
    unElemento.recibirAtaqueDe(self)
    poblacion = poblacion * 1.1
  }

  


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

  override method atacarA(unElemento){
    super(unElemento)
    pesoActual = pesoActual + 2
  }
}

class Pulgas inherits Plagas {


  override method nivelDeDaños(){
       return  self.poblacion()*2
  }
  override method condicionAdicional(){}

  
}

class Garrapatas inherits Pulgas {
  override method atacarA(unElemento){
      unElemento.recibirAtaqueDe(self)
      poblacion = poblacion * 1.2
  
 
  }
}


class Mosquito inherits Plagas{
  
  
  override method nivelDeDaños(){
       return  self.poblacion()
  }
  override method condicionAdicional(){
    return self.poblacion() % 3 == 0
  }

}


