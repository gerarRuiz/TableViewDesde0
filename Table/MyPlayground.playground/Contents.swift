import UIKit

protocol operacionesBasicas{
    
    func suma(a:Int, b:Int)
    func resta(a:Int, b:Int)
    func multiplicacion()
    func division()
}

class Computadora {
    
    let cpu:String = "8086"
    
    
}

class Calculadora: Computadora, operacionesBasicas{
    
    func suma(a:Int, b:Int) {
        print("Estoy sumando")
    }
    
    func resta(a:Int, b:Int) {
        print("Estoy restando")
    }
    
    func multiplicacion() {
        print("Estoy multiplicando")
    }
    
    func division() {
        print("Estoy dividiendo")
    }
    
    
    
    
    
}
