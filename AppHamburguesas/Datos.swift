//
//  Datos.swift
//  AppHamburguesas
//
//  Created by Eduardo on 5/11/15.
//  Copyright © 2015 EduardoAndrade. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    
    var paises = ["Colombia", "España", "México", "Estados Unidos", "Francia", "Ecuador", "Venezuela", "Argentina", "Chile", "Perú", "Uruguay", "Paraguay", "Brasil", "Canadá", "Bolivia", "China", "Japon", "Costa Rica", "Cuba", "India", "Jamaica", "Marruecos", "Noruega"]
    
    var tupla = [("Colombia", "co"), ("España", "es"), ("México", "mx"), ("Estados Unidos", "us"), ("Francia", "fr"), ("Ecuador", "ec"), ("Venezuela", "ve"), ("Argentina", "ar"), ("Chile", "cl"), ("Perú", "pe"), ("Uruguay", "uy"), ("Paraguay", "py"), ("Brasil", "br"), ("Canadá", "ca"), ("Bolivia", "bo"), ("China", "co"), ("Japon", "jp"), ("Costa Rica", "cr"), ("Cuba", "cu"), ("India", "in"), ("Jamaica", "jm"), ("Marruecos", "ma"), ("Noruega", "no")]
    
    func obtenerTupla () -> (String, String) {
        let indiceAleatorio = Int(arc4random()) % tupla.count
        print("tupla obtenida: \(tupla[indiceAleatorio])")
        return tupla[indiceAleatorio]
    }
    
    func obtenPais () -> String {
        let indiceAleatorio = Int(arc4random()) % paises.count
        return paises[indiceAleatorio]
    }
}

class ColeccionDeHamburguesa {
    
    var hamburguesas = ["The Soul Burger", "Beef and Bacon Burger", "Dyer’s Double", "Double Burger", "Juicy Lucy", "Cheeseburger", "Bacon Double Cheeseburger", "The Burger", "Cheeseburger with Fried Onions", "The Big Tasty", "Sirloin Burger", "Supper Burger", "Thunder Burger", "Chapman Burger", "The All American", "The Classic Burger", "Black Angus Burger", "The Woodstock", "John T Burger", "Fat Mo's Burger", "Gabby Burger", "The Burger", "Mustang Sally"]
    
    func obtenerImagenHamburguesa() -> String {
        let indiceImg = arc4random_uniform(22) + 1
        return "\(indiceImg).jpeg"
    }
    
    func obtenHamburguesa() -> String {
        let indiceAleatorio = Int(arc4random()) % hamburguesas.count
        return hamburguesas[indiceAleatorio]
    }
}