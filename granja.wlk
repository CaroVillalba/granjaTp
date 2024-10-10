import wollok.game.*



object hector {

    var property position = game.origin()

    method image() = "player.png"
    
    

    method mover(nuevaPosicion) {
        position = nuevaPosicion
    }
}

object maiz{
   
	method image() = "corn_baby.png" 
	method position() = game.at(1, 8)

}
object tomaco {
  
	method image() = "tomaco.png"
	method position() = game.at(2, 2)

}

object trigo {
  
	method image() = "wheat_0.png"
	method position() = game.at(3, 5)

}