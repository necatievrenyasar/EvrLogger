//
//  EvrFileTest.swift
//  EvrLoggerTests
//
//  Created by Evren Yaşar on 10.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import Foundation
import XCTest
@testable import EvrLogger

class EvrFileTest: XCTestCase {
    var Log = EvrLogger()
    
    func testFileName() {
        Log.i("Test")
        
        XCTAssertNotNil(Log.latestModel)
        
        let fm = Log.getFileName(Log.latestModel!.fileName)
        
        XCTAssert(fm == "EvrFileTest")
    }
}
