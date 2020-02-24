//
//  HorosocpoChino.swift
//  AppChinaZ
//
//  Created by user164243 on 20/02/2020.
//  Copyright © 2020 user164243. All rights reserved.
//

import Foundation
struct Horoscopo {
    
    var signo: animal
    var desde: String
    var hasta: String
    var descripcion: String
    init(signo: animal, desde: String, hasta: String, descripcion: String) {
      
        self.signo = signo
        self.desde = desde
        self.hasta = hasta
        self.descripcion = descripcion
   
    
    } // init
    
    
    
} // Horoscopo

struct HoroscopoChino{
    var horoscopos: [Horoscopo]
    init() {
        
    
        let serpiente = Horoscopo (signo: .serpiente, desde:"06-02-1989", hasta:"26-01-1990", descripcion: "Sabia, lógica, creativa, elegante, astuta, materialista, desconfiada, quisquillosa y organizada.")
        let caballo = Horoscopo (signo: .caballo, desde:"27-01-1990", hasta:"14-02-1991", descripcion: "Amable, entusiástico, independiente, inteligente, creativo, optimista, fuerte, asertivo, hablador, talentoso, alegre, activo, elocuente, aventurero, versátil, juguetón, alegre, animado, espíritu libre" )
        let cabra = Horoscopo (signo: .cabra, desde:"15-02-1991", hasta:"03-02-1992", descripcion: "Creativo, generoso, dócil, intuitivo y modesto, también destacan su honestidad y sinceridad con algo de timidez; se puede confiar en su nobleza y ternura; en su interior son pesimistas, inseguras e introvertida")
        let mono = Horoscopo (signo: .mono, desde:"04-02-1992", hasta:"22-01-1993", descripcion: "Inteligente, ingenioso, versátil, noble, generoso e independiente, en su lado más áspero puede mostrarse cínico, inquieto, infiel, voluble")
        let gallo = Horoscopo (signo: .gallo, desde:"23-01-1993", hasta:"09-02-1994", descripcion: "Ingenioso, valiente, leal, trabajador, talentoso y generoso; también pueden ser orgullosos, curiosos, románticos y les encanta el lujo")
        let perro = Horoscopo (signo: .perro, desde:"10-02-1994", hasta:"30-01-1995", descripcion: "Leal, honesto, modesto, elocuente, inteligente, versátil, juguetón, bondadoso, fiel, obediente, instintivo y organizador")
        let cerdo = Horoscopo (signo: .cerdo, desde:"31-01-1995", hasta:"18-02-1996", descripcion: "Tolerante, sensible, optimista, honesto, popular, afortunado, fiel, comprensivo y con sentido del humor")
        let rata = Horoscopo (signo: .rata, desde:"19-02-1996", hasta:"07-02-1997", descripcion: "Disciplinada, meticulosa, sistemática, sociable, inteligente, astuta, superambiciosa, cruel, intolerante, egoísta, trabajadora, ahorrativa")
        let buey = Horoscopo (signo: .buey, desde:"08-02-1997", hasta:"27-01-1998", descripcion: "Metódico, serio, paciente, tenaz, tranquilo, trabajador, ambicioso, tradicional, estable, practico, lógico, obstinado, rígido, intolerante")
        let tigre = Horoscopo (signo: .tigre, desde:"28-01-1998", hasta:"15-02-1999", descripcion: "Rebelde, independiente, dinámico, apasionado, osado, impredecible, impulsivo, sincero, cariñoso, generoso, humanitario, impaciente, imprudente, irascibl")
        let liebre = Horoscopo (signo: .liebre, desde:"16-02-1999", hasta:"04-02-2000", descripcion: "conservador, sensitivos, modestos, discretos, educados; por otro lado algo ingenuos, tímidos y diplomáticos.")
        let dragón = Horoscopo (signo: .dragon, desde:"05-02-2000", hasta:"23-01-2001", descripcion: "ambicioso, carismático, noble, magnánimo y poderoso; también puede ser despiadado, arrogante, despótico e intolerante.")
   
    
   
     horoscopos =  [serpiente, caballo, cabra, mono, gallo, perro, cerdo, rata, buey, tigre, liebre, dragón]
    }

    var dateStringFormatter = DateFormatter()

   
    
    func fechaHoroscopo(fecha: Date) -> Horoscopo? {
        dateStringFormatter.dateFormat = "dd/MM/yyyy"
        var horoscopoVuelta:Horoscopo? = nil
    for horoscopo in horoscopos {
       
        let horoscopoDesde = dateStringFormatter.date(from: horoscopo.desde)
        let horoscopoHasta = dateStringFormatter.date(from: horoscopo.hasta)
        if horoscopoDesde?.compare(fecha) == ComparisonResult.orderedAscending &&
            horoscopoHasta?.compare(fecha) == ComparisonResult.orderedDescending {
           
            horoscopoVuelta = horoscopo
        }
        
    }
         return horoscopoVuelta
    }
}
