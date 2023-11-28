//
//  Devices.swift
//  Smart Home
//
//  Created by Flatley, Michael (JMOB) on 28/11/2023.
//

import Foundation

// Parent Classes: //

class Device {
    private var name: String
    private var poweredOn: Bool
    
    init(name: String) {
        self.name = name
        self.poweredOn = false
    }
    
    func powerButton(){
        poweredOn.toggle()
    }
    
    func getName() -> String {
        return self.name
    }
}

// Child Classes: //

class Lighting: Device {
    private var brightness: Int
    private var room: String
    
    init(name: String, room: String) {
        self.brightness = 0
        self.room = room
        super.init(name: name)
    }
    
    func adjustBrightness(_ brightness: Int) {
        if brightness > 100 {
            self.brightness = 100
        } else if brightness < 0 {
            self.brightness = 0
        } else {
            self.brightness = brightness
        }
    }
    
    func getRoom() -> String {
        return self.room
    }
}

class Heating: Device {
    var temperature: Int
    var room: String
    
    init(name: String, room: String) {
        self.temperature = 0
        self.room = room
        super.init(name: name)
    }
    
    func adjustTemperature(_ temp: Int) {
        if temp > 100 {
            self.temperature = 100
        } else if temp < 0 {
            self.temperature = 0
        } else {
            self.temperature = temp
        }
    }
    
    func getRoom() -> String {
        return self.room
    }
}

class Audio: Device {
    var volume: Int
    var room: String
    
    init(name: String, room: String) {
        self.volume = 0
        self.room = room
        super.init(name: name)
    }
    
    func changeVolume(_ volume: Int) {
        if volume > 100 {
            self.volume = 100
        } else if volume < 0 {
            self.volume = 0
        } else {
            self.volume = volume
        }
    }
    
    func getRoom() -> String {
        return self.room
    }
}
