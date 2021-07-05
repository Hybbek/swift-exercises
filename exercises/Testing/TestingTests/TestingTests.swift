//
//  TestingTests.swift
//  TestingTests
//
//  Created by Lukas Züger on 27.06.21.
//

import XCTest
@testable import Testing

class TestingTests: XCTestCase {

    func testValidEmail(){
        let test1 = isValidEmail("lukas.z1995@hotmail.com")
        let test2 = isValidEmail("test@gmail.com")
        let test3 = isValidEmail("Alain@yahoo.de")
        let test4 = isValidEmail("rolf.buffer.12345@bluewin.ch")
        
        XCTAssertTrue(test1)
        XCTAssertTrue(test2)
        XCTAssertTrue(test3)
        XCTAssertTrue(test4)
        
    }
    
    func testInvalidEmail(){
        let test1 = isValidEmail(" ")
        let test2 = isValidEmail("test@@gmail.com")
        let test3 = isValidEmail("Alain_yahoo.de")
        let test4 = isValidEmail(" rolf.buffer.12345@bluwin.ch")
        
        XCTAssertFalse(test1)
        XCTAssertFalse(test2)
        XCTAssertFalse(test3)
        XCTAssertFalse(test4)
    }

}
