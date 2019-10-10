//
//  EvrLogger.swift
//  EvrLogger
//
//  Created by Evren Yaşar on 10.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import Foundation

public class EvrLogger {
    
    public enum LogType {
        
        case debug, error, info, warning
        
        func getChar() -> String {
            switch self {
            case .debug:
                return "📗"
            case .error:
                return "📕"
            case .info:
                return "📘"
            case .warning:
                return "📙"
            }
        }
        
        func getName() -> String {
            switch self {
            case .debug:
                return "DEBUG"
            case .error:
                return "ERROR"
            case .info:
                return "INFO"
            case .warning:
                return "WARNING"
            }
        }
    }
    
    public var latestModel: EvrLogModel?
    
    public func d(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
        let type = LogType.debug
        let model = EvrLogModel(fileName: file, functionName: function, type: type, message: message)
        print(model.toString())
    }
    
    public func i(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
        let type = LogType.info
        let model = EvrLogModel(fileName: file, functionName: function, type: type, message: message)
        latestModel = model
        print(model.toString())
    }
    
    public func e(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
           let type = LogType.info
           let model = EvrLogModel(fileName: file, functionName: function, type: type, message: message)
           latestModel = model
           print(model.toString())
       }
    
    
    public func getFileName(_ filePath: String) -> String {
        let parser = filePath.split(separator:"/")
        if let fileName = String(parser.last ?? "").split(separator: ".").first {
            return String(fileName)
        }
        return ""
    }
    
}
