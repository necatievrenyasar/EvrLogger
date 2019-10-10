//
//  EvrLoggerTests.swift
//  EvrLoggerTests
//
//  Created by Evren Yaşar on 10.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import XCTest
@testable import EvrLogger

class EvrLoggerTests: XCTestCase {

    var Log: EvrLogger?
    
    override func setUp() {
        Log = EvrLogger()
    }


    func testFunctionAndFileName() {
        Log?.i("Test Message")
        
        XCTAssertNotNil(Log?.latestModel)
        print(Log?.latestModel?.fileName)
        print(Log?.latestModel?.functionName)
        XCTAssert(Log?.latestModel?.type == EvrLogger.LogType.info, "Log type isn't equal to Info")
    }
    /*
    func testForDebug() {
        Log?.d("Test Message For Debug")
        
        XCTAssertNotNil(Log?.latestModel)
        print(Log?.latestModel?.fileName)
        print(Log?.latestModel?.functionName)
        
        XCTAssert(Log?.latestModel?.functionName == "testForDebug()", "Function Name isn't equal to Debug")
        XCTAssert(Log?.latestModel?.type == EvrLogger.LogType.info, "Log type isn't equal to Debug")
    }
 */
    
    func testInfo() {
        
    }

}
