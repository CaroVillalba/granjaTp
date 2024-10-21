import granja.*
import wollok.game.*

class Maiz{
    var property position = hector.position()
    var property adulto = false 
    var property sufijo = 'baby' 
    const property precio = 150


	method image()  = 'corn_' + sufijo +'.png' 
    method regandose() {
        sufijo = 'adult'
        adulto = true
    }

}
class Tomaco{
    var property position = hector.position()
	var property adulto = true 
    const property precio = 80

    method EstaArriba(){
        return (self.position().y() == 9)
    }

	method image() = 'tomaco.png' 
    method regandose() {
        if(!self.EstaArriba()){ position = self.position().up(1)  }
    }
}

class Trigo {
    var property position = hector.position()
    var property adulto = false 
    var property nivel = 0 
    
    method precio() = nivel - 1 * 100
	method image()= 'wheat_' + nivel + '.png' 
    method regandose() {
        if (nivel < 3){
            nivel += 1
        } else {
            adulto = true
            nivel = 0 //reseteo el nivel 
        }
    }
}