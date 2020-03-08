//
//  Calificacion.swift
//  CalculoPromedio
//
//  Created by Miguel Angel Jimenez Melendez on 3/8/20.
//  Copyright © 2020 Miguel Angel Jimenez Melendez. All rights reserved.
//

import Foundation
class Calificacion {
    var nombre: String = ""
    var matematicas: Double = 0.0
    var historia: Double = 0.0
    var español: Double = 0.0
    var geografia: Double = 0.0
    var promedio: Double = 0.0
    init (nom: String, mat: Double, his: Double, esp: Double, geo: Double, prom: Double){
        self.nombre = nom
        self.matematicas = mat
        self.historia = his
        self.español = esp
        self.geografia = geo
        self.promedio = prom
    }
}
