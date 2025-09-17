object rolando{
    const property historial = []
    var property hogar = castillo
    var property mochila= #{}
    var property capacidad = 2
    var property poderBase = 5
    method encuentraArtefacto(artefacto){
        historial.add(artefacto)
        if (self.hayCapacidad()){
            mochila.add(artefacto)
        }
    }
    method batallar(){
        mochila.forEach({artefacto => artefacto.usado()})
        poderBase = poderBase + 1
        //for each de la mochila le uso el mensaje usado y le subo a rolando uno del poder base
        // siempre separar metodos que vuelven valores a los que realizen acciones
        // hago un metodo usado() en todos los artefactos aunque a algunos no les cambie nada, para mantener el polimorfismo: todos los artefactos entienden el mensaje usado()
    }
    method poder(){
        return poderBase  + self.poderArtefactos()

    }
    method poderArtefactos(){
        return mochila.sum ({artefacto => artefacto.poder(self)})  // puedo usar self para referirme al personaje que me refiero
    }

    method hayCapacidad(){
        return self.capacidad() > mochila.size()
    } 
    method tieneElArtefacto(artefacto){
        return mochila.contains(artefacto) 
    }
    method dejarArtefactosEnCastillo(){
        castillo.artefactos(castillo.artefactos().union(mochila)) // la union no guarda en ningun lado de por si?
        mochila.clear()
    }
    method posesiones(){
        return mochila + castillo.artefactos()
    }
}
object castillo{
    var property artefactos = #{}

}

object espadaDelDestino {
    var property cantDeUsos = 0
    method poder(personaje){
        if (cantDeUsos== 0) {
            return personaje.poderBase()
        } else {
            return ((personaje.poderBase()) / 2)
        }
    }
    method usado(){
        cantDeUsos = cantDeUsos +1
    }
}

object libroDeHechizos {
    method poder(personaje){

    }
    method usado(){
        
    }

}
object bendicion{
    method poder(personaje){
        return 4
    }
}

object invisibilidad{
    method poder(personaje){
        return personaje.poderBase()
    }
}

object collarDivino{
    var property cantDeUsos = 0
    method poder(personaje){
        if (personaje.poderBase() > 6) {
            return 3 + cantDeUsos
        } else {
            return 3
        }
        
    }
    method usado(){
        cantDeUsos = cantDeUsos + 1
    }

}

object armaduraDeAceroValyrio{
    method poder(personaje){
        return 6
    }
    method usado(){

    }

}