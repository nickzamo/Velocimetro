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
    var nombreVelocidad : String
    //var velocidadInicial : Velocidades
    var velocidad = Velocidades(velocidadInicial: <#T##Velocidades#>)
    var aux: Int = 0
    
    
    init(apagado: Velocidades){
        self.velocidad = apagado
        
    }
    func cambioDeVelocidad()->(actual:Int,velocidadEnCadena:String)
    {
        
        if(velocidad == Velocidades.Apagado)
        {
            aux = Velocidades.VelocidadBaja.rawValue
            nombreVelocidad = "Apagado"
        }
        if(velocidad == Velocidades.VelocidadBaja)
        {
            aux = Velocidades.VelocidadMedia.rawValue
            nombreVelocidad = "Velocidad Baja"
        }
        if(velocidad == Velocidades.VelocidadMedia)
        {
            aux = Velocidades.VelocidadAlta.rawValue
            nombreVelocidad = "Velocidad Media"
        }
        if(velocidad == Velocidades.VelocidadAlta)
        {
            aux = Velocidades.VelocidadMedia.rawValue
            nombreVelocidad = "Velocidad Alta"
        }
        
        return (aux, nombreVelocidad)
        
    }
}

var auto = Auto.cambioDeVelocidad

for(var i=0; i<20; i++)
{
    print("\(i) \(auto)")
}

