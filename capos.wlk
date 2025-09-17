object rolando{
    const property historial = []
    var property hogar = castillo
    var property mochila= #{}
    var property capacidad = 2
    method encuentraArtefacto(artefacto){
        historial.add(artefacto)
        if (self.hayCapacidad()){
            mochila.add(artefacto)
        }
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
}

object libroDeHechizos {

}

object collarDivino{

}

object armaduraDeAceroValyrio{

}