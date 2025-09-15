object rolando{
    const historial = []
    var property hogar = castillo
    var property mochila= #{espadaDelDestino}
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
        castillo.artefactos.union(mochila)
        mochila.clear()
    }
    method posesiones(){
        return 
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