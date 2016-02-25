//: Mini Reto de Velocimetro
import UIKit


enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad : Velocidades

    
    
    init(){
        self.velocidad = Velocidades.init(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual:Int, velocidadEnCadena: String )
    {
        var nombreVelocidad : String = ""
        let velocidadActual : Int = velocidad.rawValue
        
        switch velocidad
        {
            case .Apagado:
                nombreVelocidad = "Apagado"
                velocidad = .VelocidadBaja
                break
            case .VelocidadBaja:
                nombreVelocidad = "Velocidad Baja"
                velocidad = .VelocidadBaja
                break
            case .VelocidadMedia:
                nombreVelocidad = "Velocidad Media"
                velocidad = .VelocidadBaja
                break
            case .VelocidadAlta:
                nombreVelocidad = "Velocidad Alta"
                velocidad = .VelocidadBaja
                break
        }
        
        return (velocidadActual, nombreVelocidad)
        
    }
}

var auto = Auto()

for(var i=0; i<20; i++)
{
    let velocidadAuto = auto.cambioDeVelocidad()
    print("\(velocidadAuto.actual), \(velocidadAuto.velocidadEnCadena)")
}

