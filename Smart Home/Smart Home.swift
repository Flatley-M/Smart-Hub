//
//  Smart Home.swift
//  Smart Home
//
//  Created by Flatley, Michael (JMOB) on 28/11/2023.
//

import Foundation

class SmartHome {
    private var devices: [Device] = []
    
    func addDevice(device: Device){
        self.devices.append(device)
    }
    
    func viewDevices() {
        for device in devices{
            print(device.getName())
        }
    }
}
