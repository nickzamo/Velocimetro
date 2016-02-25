//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadeana: String) {
        
        let velocidadCadena : String
        let velocidadOriginal : Velocidades = self.velocidad
        
        switch velocidadOriginal {
        case .Apagado:
            velocidadCadena = "Apagado"
        case .VelocidadBaja:
            velocidadCadena = "Velocidad baja"
        case .VelocidadMedia:
            velocidadCadena = "Velocidad media"
        case .VelocidadAlta:
            velocidadCadena = "Velocidad alta"
        }
        
        switch self.velocidad  {
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            
        }
        
        return (velocidadOriginal.rawValue,velocidadCadena)
    }
}


var auto : Auto = Auto.init()
var numero : Int
var cadena : String

for i in 1...20 {
    (numero,cadena) = auto.cambioDeVelocidad()
    print("\(i).- \t\(numero), \(cadena)")
}