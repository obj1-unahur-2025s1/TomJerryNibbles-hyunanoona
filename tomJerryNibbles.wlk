/*
Saber si tom puede cazar un ratón que está a cierta distancia (indicando la distancia)
Cazar un ratón que está a cierta distancia (indicando el ratón y la distancia)
Puede cazar si tiene energía suficiente para recorrer esa distancia. Es decir, la energía que gastaría en correr la distancia es menor a 
su propia energía.

Cazar un ratón si puede, y hacer que lo coma.
*/

object tom {
    var ratonComido = null
    var metrosCorridos = 0
    var energia = 50 
    method comerRaton(unRaton) {
      ratonComido = unRaton
      energia = energia + 12 + unRaton.peso()
    }
    method correr(unaDistancia) {
      metrosCorridos = metrosCorridos + unaDistancia
      energia = energia - unaDistancia/2
    }
    method velocidadMaxima() {
      return(
        5 + energia/10
      )
    }
    method cazarRatonSiPuede(unRaton, unaDistancia) {
      if(energia > unaDistancia/2){
        self.correr(unaDistancia)
        self.comerRaton(unRaton)
      }
    }
}

object jerry {
    var edad = 2
    method cumplirAños() {
      edad = edad + 1
    }
    method peso() {
      return(
        edad*20
      )
    }
}

object nibbles {
    method peso() {
      return(
        35
      )
    }
}

object advincula {
    var peso = 20
    method comerQueso(unaCantidad){
      peso = peso + unaCantidad/3
    }
    method peso() {
      return(
        peso
      )
    }
}