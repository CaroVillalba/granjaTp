import wollok.game.*

object hector {

    var property position = game.origin()

    method image() = "player.png"
    //method regar
	//method sembrar
	//method cultivar
	//method vender
    
    method mover(nuevaPosicion) {
        position = nuevaPosicion
    }
}

