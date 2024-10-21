import wollok.game.*

object hector {

    var property position = game.origin()

    method image() = "player.png"
    //method regar
	method sembrar(cultivo){
		game.addVisual(cultivo)
	}

    method puedeRegar(){
        return !(game.colliders(self).isEmpty())
    }

    method regar(){
        if(self.puedeRegar()){
            game.uniqueCollider(self).regandose()
        }else{
            game.say(self,"No hay nada que regar!")
        }
    }
	//method cultivar
	//method vender

 ///
   /// method mover(nuevaPosicion) {
    ///    position = nuevaPosicion
  /// }
    

}

object aspersor{
    method image() = "aspersor.png"
    const property position = game.center()
    //riega todo alrededor, usara metodo regar para cada planta (estara en hector, y el cambio de la planta sera un metodo propio de la planta)
    //cada 5 segundo, usamos onTick


    method regarCultivosCercanos(){
        self.cultivosCercanos().forEach{cult => cult.regandose()} //y se riegan las plantas
    }
    method posicionesAlrededor() = [ position.up(1), position.up(1).left(1),position.up(1).right(1), position.left(1), position.right(1), position.down(1), position.down(1).left(1), position.down(1).right(1)] 
    method cultivosCercanos() = self.posicionesAlrededor().flatMap{pos => game.getObjectsIn(pos)}


}

