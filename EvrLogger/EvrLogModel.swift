//
//  EvrLogModel.swift
//  EvrLogger
//
//  Created by Evren Yaşar on 10.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import Foundation
public struct EvrLogModel {
    public let fileName:String
    public let functionName: String
    public let type: EvrLogger.LogType
    public let message: String
    
    public func toString() -> String {
        return " \(type.getChar()) \(type.getName()) \(type.getChar()) \(EvrLogger.getFileName(fileName)).\(functionName) -> \(message)"
    }
}
