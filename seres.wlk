import planetas.*

class Defensores{
    method potencia()
}

object arturito inherits Defensores{

    
    const valentia = 10 // puede cambiar?
    var bateria = 50 

    override method potencia() = valentia * bateria
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

        var potenciaActual 

        if(!congelado){
            potenciaActual = arma.energia() * 2
        }
        
        return potenciaActual 
}
}

class Lider inherits Defensores{
    
    var planetaDefendido 

    override method potencia() = planetaDefendido.guerreros().sum({guerrero => guerrero.potencia()})
}

const leia = new Lider(planetaDefendido = tatooine)

class Maestro inherits Defensores{
    const midiclorianos = 100000
    const cargaDeSable = 100
    var esperanza = 50

    method esperanza() = esperanza

    var property rol = jedi 
    

    method viveSuceso(suceso){ // esta bien asi?
        esperanza += suceso.cargaEmocional()

        if (esperanza <= 0){
            rol = sith
        }
        else{
            rol = jedi
        }
    }

    override method potencia() = (midiclorianos/1000 + cargaDeSable) * rol.fuerza()
    
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
    
    method cargaEmocional()
}

object conseguirAmigo inherits Suceso{  // se repite logica?
    var amigo = arturito
    override method cargaEmocional() = amigo.potencia()
}

object participarEnBatalla inherits Suceso{
    var bajas = 20
    override method cargaEmocional() = bajas * (-2)
}

object ganarCarrera inherits Suceso{
    
    override method cargaEmocional() = 5 //que hago con ese parametro?
}

class SucesoMultiple inherits Suceso{

    const sucesos = []

    override method cargaEmocional() = 
    sucesos.sum({suceso => suceso.cargaEmocional()})
    
}
