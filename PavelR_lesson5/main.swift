//
//  main.swift
//  PavelR_lesson5
//
//  Created by Павел on 30.07.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import Foundation



protocol Car {
    func startMoving()
    func stopMoving()
}

extension Car {
    
    func openWindows() {}
    func closeWindows() {}
    
}

class  StandartCar: Car {
    
    let brand: String
    let model: String
    let color: String
    
    init(brand: String, model: String, color: String) {
        self.brand = brand
        self.color = color
        self.model = model
    }
    
    func openWindows() {
        print("У \(brand) \(model) окна открываются")
    }
    
    func closeWindows() {
        print("У \(brand) \(model) окна закрыватся")
    }
    
    func startMoving() {
        print("Автомобиль \(brand) \(model) начал движение")
    }
    
    func stopMoving() {
        print("Автомобиль \(brand) \(model) остановился")
    }
    
    
}

let lexus = StandartCar(brand: "Lexus", model: "RX 350", color: "черный")


extension StandartCar: CustomStringConvertible {
    var description: String {
        return "Прекрасный \(color) автомобиль \(brand) \(model) "
    }
    
    
}

class Truck: Car {
    
    let brand: String
    let model: String
    let color: String
    let cargoVolume: Int
    
    init(brand: String, model: String, color: String, cargoVolume: Int) {
        self.brand = brand
        self.color = color
        self.model = model
        self.cargoVolume = cargoVolume
    }
    
    func openWindows() {
        print("У \(brand) \(model) окна открываются")
    }
    
    func closeWindows() {
        print("У \(brand) \(model) окна закрыватся")
    }
    
    func startMoving() {
        print("Автомобиль \(brand) \(model) начал движение")
    }
    
    func stopMoving() {
        print("Автомобиль \(brand) \(model) остановился")
    }
    
}
let kamaz = Truck(brand: "Камаз", model: "Сайгак", color: "оранжевый", cargoVolume: 10000)

extension Truck: CustomStringConvertible {
    var description: String {
        return "Мощный вездеход \(brand) \(model) с грузоподъемностью \(cargoVolume) кг, доставит ваш груз куда угодно"
    }
}

lexus.openWindows()

lexus.closeWindows()

lexus.startMoving()

lexus.stopMoving()

print(lexus)

kamaz.openWindows()

kamaz.closeWindows()

kamaz.startMoving()

kamaz.stopMoving()

print(kamaz)
