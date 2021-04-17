//
//  Luxfacta.swift
//  TesteIOS
//
//  Created by Fernando Totta on 17/04/21.
//

import Foundation

class Luxfacta {
    let n: Int
    
    init(n: Int) {
        self.n = n
    }
    
    func say() -> String {
        if n%3 == 0 && n%5==0 {
            return "LuxFacta"
        }
        else if n%3==0 {
            return "Lux"
        } else if n%5==0 {
            return "Facta"
        }
        return "\(n)"
    }
}
