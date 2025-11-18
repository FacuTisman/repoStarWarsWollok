import seres.*

class Planeta {
    var poblacion
    method poblacion() = poblacion
    const guerreros = []

    method guerreros() = guerreros 

    method potenciaDefensores(){
        return guerreros.sum({guerrero => guerrero.potencia()}) // lista.sum({itemLista => itemLista.loQueQuieroSumar()})
    }

    method seDefiende(atacante) = self.potenciaDefensores() > atacante.intensidad()

    method resultadoInvasion(atacante) {
        if(!self.seDefiende(atacante)){
            poblacion = poblacion * 0.9
        }
        return poblacion
    }

    method masPotente(){
        return guerreros.max({guerrero => guerrero.potencia()}) 
    }
}


class invasion {
    var intensidad 
    method intensidad() = intensidad
}

const invasionATatooine = new invasion(intensidad = 100)

const tatooine = new Planeta(poblacion = 1000000, guerreros = [hanSolo,arturito])
