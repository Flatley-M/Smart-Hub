//
//  input Class.swift
//  Smart Home
//
//  Created by Flatley, Michael (JMOB) on 28/11/2023.
//

import Foundation

class Input {
    func getInt() -> Int {
        if let input = readLine() {
            if let integer = Int(input){
                return integer
            }
        }
        return 0
    }
    func getDouble() -> Double {
        if let input = readLine() {
            if let double = Double(input){
                return double
            }
        }
        return 0.0
    }
 
    func getString() -> String {
        if let input = readLine() {
            return input
        } else {
            return ""
        }
    }
}
