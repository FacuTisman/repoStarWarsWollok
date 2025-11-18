import planetas.*

class Defensores{
    var  potencia = 0 
    
    method potencia()
}

object arturito inherits Defensores{

    
    const valentia = 10 // puede cambiar?
    var bateria = 50 

    override method potencia(){
        potencia = valentia * bateria
        return potencia 
    }

}

class Armas{

    var energia //inicializar?
    method energia() = energia

}

const blaster = new Armas(energia = 70)
const ak = new Armas(energia = 40)

const coleccionArmas = [blaster, ak]

object hanSolo inherits Defensores{ 

    var congelado = true 
    var arma = coleccionArmas.anyOne()

    method nuevoEstadoDeCongelacion(congelar){
        congelado = congelar 
    }

    override method potencia() {
        if(congelado){
            return potencia
        }
        else{
            potencia = arma.energia() * 2
            return potencia
        }
    }

}

class Lider inherits Defensores{
    method potenciaPlaneta(planeta){
        planeta.guerreros().forEach({guerrero => guerrero.potencia(guerrero.potencia() + 1)})
    }

    override method potencia() = potencia
}

const leia = new Lider()

class Maestro inherits Defensores{
    const midiclorianos = 100000
    const cargaDeSable = 100
    var esperanza = 50

    method esperanza() = esperanza

    var property rol = jedi 
    

    method viveSuceso(suceso, parametro){ // esta bien asi?
        esperanza += suceso.cargaEmocional(parametro)

        if (esperanza <= 0){
            rol = sith
        }
        else{
            rol = jedi
        }
    }

    override method potencia() = (midiclorianos + cargaDeSable) * rol.fuerza()
    
}

const yoda = new Maestro()

object jedi {
    const esperanzaInicial = 50
    const property fuerza = 10
}

object sith{
    var property fuerza = 20
}

class Suceso {
    method cargaEmocional(parametro)
}

object conseguirAmigo inherits Suceso{  // se repite logica?
    override method cargaEmocional(amigo) = amigo.potencia()
}

object participarEnBatalla inherits Suceso{
    override method cargaEmocional(bajas) = bajas * (-2)
}

object ganarCarrera inherits Suceso{
    override method cargaEmocional(unidades) = 5 //que hago con ese parametro?
}
