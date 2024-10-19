import granja.*
import wollok.game.*

class Maiz{
    var property position = hector.position()
    var property adulto = false 
    var property sufijo = 'baby' 
    const property precio = 150


	method image()  = 'corn_' + sufijo +'.png' 
    method regada() {
        sufijo = 'adult'
        adulto = true
    }

}
class Tomaco{
    var property position = hector.position()
	var property adulto = true 
    const property precio = 80

	method image() = 'tomaco.png' 
    method regada() {
        position=Tomaco.position().up(1)
    }
}

class Trigo {
    var property position = hector.position()
    var property adulto = false 
    var property nivel = 0 
    
    method precio() = nivel - 1 * 100
	method image()= 'wheat_' + nivel + '.png' 
    method regada() {
        if (nivel <= 4){
            nivel += 1
        } else {
            adulto = true
        }
    }
}