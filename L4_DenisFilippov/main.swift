//
//  main.swift
//  L4_DenisFilippov
//
//  Created by Denis Filippov on 27/7/20.
//  Copyright © 2020 Denis Filippov. All rights reserved.
//

import Foundation

enum clickStart {
    case start, stop
}


enum Trunk {
    case empty, full
}

class someCar {
    var brand : String
    var model : String
      init(brand: String, model:String) {
          self.brand = brand
          self.model = model
         
      }
}
  
  
class someTruck:someCar {

    var BootState : Trunk
    init(brand: String, model:String, BootState : Trunk) {
        self.BootState = BootState
        super.init(brand: brand, model: model)
    }
    func emptyTrunck() {
        if BootState == .empty{
        print ("\(brand)\(model) trunck is empty")
        } else{ print ("\(brand)\(model) trunck is full")}
    }
    
}
   
    class sportCar: someCar {
        var moreFast: clickStart
        init(brand: String, model:String, moreFast: clickStart) {
            self.moreFast = moreFast
            super.init(brand: brand, model: model)
        }
        
        func moreFastOn() {
            if moreFast == .start{
                print("Спорт режим включен")
            }else{
                print("Комфортный режим включен")
            }
        }
    }
    
let GAZ = someTruck(brand: "Газ", model: "Бычок", BootState: .empty)
GAZ.emptyTrunck()
let Bugatti = sportCar(brand: "Бугатти", model: "Вэйрон", moreFast: .start)
Bugatti.moreFastOn()


    
