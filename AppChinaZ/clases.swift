//
//  clases.swift
//  AppChinaZ
//
//  Created by user164243 on 22/02/2020.
//  Copyright © 2020 user164243. All rights reserved.
//

import Foundation
enum animal: String {
    case serpiente
    case caballo
    case cabra
    case mono
    case gallo
    case perro
    case cerdo
    case rata
    case buey
    case tigre
    case liebre
    case dragon
}
extension animal: CustomStringConvertible {
var description: String {
    return self.rawValue
}
}

