import wollok.game.*
import granja.*
import cultivos.*

object juego {
    // aca se inicializan los objetos 

    method iniciar () {
        game.addVisualCharacter(hector)
        config.confifgurarTeclas()
        

    }
}

object config {

    const maiz = new Maiz()
    const trigo = new Trigo()
    const tomaco = new Tomaco()

    method confifgurarTeclas() {
        keyboard.up().onPressDo({hector.mover(hector.position().up(1))})
        keyboard.down().onPressDo({hector.mover(hector.position().down(1))})
        keyboard.left().onPressDo({hector.mover(hector.position().left(1))})
        keyboard.right().onPressDo({hector.mover(hector.position().right(1))})
        keyboard.m().onPressDo({hector.sembrar(maiz)})
        keyboard.t().onPressDo({hector.sembrar(trigo)})
        keyboard.o().onPressDo({hector.sembrar(tomaco)})
    }

    
}
