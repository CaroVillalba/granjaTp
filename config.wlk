import wollok.game.*
import granja.*
import cultivos.*

object juego {
    // aca se inicializan los objetos 

    method iniciar () {
        game.addVisualCharacter(hector)
        game.addVisual(aspersor)
        config.confifgurarTeclas()
        config.eventos()
        game.onTick(5000,"aspersor",{aspersor.regarCultivosCercanos()})

    }
}

object config {

   // const maiz = new Maiz()
   // const trigo = new Trigo()
    //const tomaco = new Tomaco()

    method confifgurarTeclas() {
        keyboard.up().onPressDo({hector.position().up(1)}) //correcion
        keyboard.down().onPressDo({hector.position().down(1)})
        keyboard.left().onPressDo({hector.position().left(1)})
        keyboard.right().onPressDo({hector.position().right(1)})
        keyboard.m().onPressDo({if(game.colliders(hector).isEmpty()){game.addVisual(new Maiz(position = hector.position()))}})
        keyboard.t().onPressDo({if(game.colliders(hector).isEmpty()){game.addVisual(new Trigo(position = hector.position()))}})
        keyboard.o().onPressDo({if(game.colliders(hector).isEmpty()){game.addVisual(new Tomaco(position = hector.position()))}})
        keyboard.r().onPressDo({hector.regar()})
    }

    method eventos() {

    }

    
}