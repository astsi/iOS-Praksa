//
//  Developer.swift
//  DebugDemo
//
//  Created by Anastasija on 25.3.22..
//

import Foundation

public struct Developer : Employee {
    
    let name: String
    let age: Int
    let languages: [String]
    
    mutating func isTooOld() -> Bool {
        return age > 65 ? true : false
    }
}
