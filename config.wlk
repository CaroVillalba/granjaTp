import wollok.game.*
import granja.*

object juego {
    // aca se inicializan los objetos 

    method iniciar () {
        game.addVisual(maiz)
        game.addVisual(trigo)
        game.addVisual(tomaco)
        game.addVisual(hector)
    }
}

object config {

    method confifgurarTeclas() {
        keyboard.up().onPressDo({hector.mover(hector.position.up(1))})
        keyboard.down().onPressDo({hector.mover(hector.position.down(1))})
        keyboard.left().onPressDo({hector.mover(hector.position.left(1))})
        keyboard.right().onPressDo({hector.mover(hector.position.right(1))})
        //keyboard.c().onPressDo(action)
       // keyboard.m().onPressDo(action)
       // keyboard.o().onPressDo(action)
    }

    

}